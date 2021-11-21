package controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Iterator;
import java.util.List;

import org.apache.catalina.User;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import model.ODS;
import model.Projects;
import model.Users;

public class JSONManager {

	private static JSONManager jso;
	private static URL url;
	private static String sitio = "http://localhost:5000/";
	private Users userSession;
	
	private JSONManager() {
		userSession = null;
	}
	
	public  static JSONManager getJSONManager() {
		if (jso == null) {
			jso = new JSONManager();
		}
		return jso;
	}

	//ODS
	
	public static ArrayList<ODS> listOds() throws IOException, ParseException {
		url = new URL(sitio + "ods/listODS");
		HttpURLConnection http = (HttpURLConnection) url.openConnection();
		http.setRequestMethod("GET");
		http.setRequestProperty("Accept", "application/json");
		InputStream respuesta = http.getInputStream();
		byte[] inp = respuesta.readAllBytes();
		String json = "";
		for (int i = 0; i < inp.length; i++) {
			json += (char) inp[i];
		}
		ArrayList<ODS> lista = new ArrayList<ODS>();
		lista = parsingOds(json);
		http.disconnect();
		return lista;
	}
	
	public static ArrayList<ODS> parsingOds(String json) throws ParseException {
		JSONParser jsonParser = new JSONParser();
		ArrayList<ODS> list = new ArrayList<ODS>();
		JSONArray users = (JSONArray) jsonParser.parse(json);
		Iterator<?> i = users.iterator();
		while (i.hasNext()) {
			JSONObject innerObj = (JSONObject) i.next();
			ODS ods = new ODS();
			ods.setOds_id(Integer.parseInt(innerObj.get("ods_id").toString()));
			ods.setDescripcion(innerObj.get("descripcion").toString());
			ods.setLogoPath(innerObj.get("logoPath").toString());
			list.add(ods);
		}
		return list;
	}


	// CRUD Users
	public static int addUser(Users usuario) throws IOException {
		int respuesta = 0;
		if (false /*verifyUser(usuario.getId())*/) {
			respuesta = 300;
		} else {
			url = new URL(sitio + "users/saveUser");
			HttpURLConnection http;
			http = (HttpURLConnection) url.openConnection();
			try {
				http.setRequestMethod("POST");
			} catch (ProtocolException e) {
				e.printStackTrace();
			}
			http.setDoOutput(true);
			http.setRequestProperty("Accept", "application/json");
			http.setRequestProperty("Content-Type", "application/json");
			String data = "{" + "\"id\":\"" + usuario.getId() + "\",\"email\": \""
					+ usuario.getEmail() + "\",\"name\": \"" + usuario.getName() + "\",\"pasword\":\""
					+ usuario.getPasword()+ "\",\"phone\":\"" + usuario.getPhone()+ "\",\"description\":\""
					+ usuario.getDescription() + "\"}";
			byte[] out = data.getBytes(StandardCharsets.UTF_8);
			OutputStream stream = http.getOutputStream();
			stream.write(out);
			respuesta = http.getResponseCode();
			http.disconnect();
		}
		return respuesta;
	}
	
	public static void redireccionar() {
		
	}

	public static int updateUser(Users usuario) throws IOException {
		url = new URL(sitio + "users/updateUser");
		HttpURLConnection http;
		http = (HttpURLConnection) url.openConnection();
		try {
			http.setRequestMethod("PUT");
		} catch (ProtocolException e) {
			e.printStackTrace();
		}
		http.setDoOutput(true);
		http.setRequestProperty("Accept", "application/json");
		http.setRequestProperty("Content-Type", "application/json");
		String data = "{" + "\"id\":\"" + usuario.getId() + "\",\"email\": \""
				+ usuario.getEmail() + "\",\"name\": \"" + usuario.getName() + "\",\"pasword\":\""
				+ usuario.getPasword()+ "\",\"phone\":\"" + usuario.getPhone()+ "\",\"description\":\""
				+ usuario.getDescription() + "\"}";
		byte[] out = data.getBytes(StandardCharsets.UTF_8);
		OutputStream stream = http.getOutputStream();
		stream.write(out);
		int respuesta = http.getResponseCode();
		http.disconnect();
		return respuesta;
	}

	public static int deleteUser(String user_email) throws IOException {
		url = new URL(sitio + "users/deleteUser/" + user_email);
		HttpURLConnection http;
		http = (HttpURLConnection) url.openConnection();
		try {
			http.setRequestMethod("DELETE");
		} catch (ProtocolException e) {
			e.printStackTrace();
		}
		http.setDoOutput(true);
		http.setRequestProperty("Accept", "application/json");
		int respuesta = http.getResponseCode();
		http.disconnect();
		return respuesta;
	}

	public static Users askUser(String user_email) {
		Users user = new Users();
		try {
			url = new URL(sitio + "users/askUser/" + user_email);
			HttpURLConnection http = (HttpURLConnection) url.openConnection();
			http.setRequestMethod("GET");
			http.setRequestProperty("Accept", "application/json");
			InputStream respuesta = http.getInputStream();
			byte[] inp = respuesta.readAllBytes();
			String json = "";
			for (int i = 0; i < inp.length; i++) {
				json += (char) inp[i];
			}
			JSONParser jsonParser = new JSONParser();
			JSONObject innerObj = (JSONObject) jsonParser.parse(json);
			user.setName(innerObj.get("name").toString());
			user.setEmail(innerObj.get("email").toString());
			user.setDescription(innerObj.get("description").toString());
			user.setPasword(innerObj.get("pasword").toString());
			user.setPhone(Integer.parseInt(innerObj.get("phone").toString()));
			http.disconnect();
		} catch (IOException | ParseException e) {
			e.printStackTrace();
		}

		return user;
	}
	
	public static Projects askProject(int prod_Id) {
		Projects proj = new Projects();
		try {
			url = new URL(sitio + "/askProyect/" + prod_Id);
			HttpURLConnection http = (HttpURLConnection) url.openConnection();
			http.setRequestMethod( "GET");
			http.setRequestProperty("Accept", "application/json");
			InputStream respuesta = http.getInputStream();
			byte[] inp = respuesta.readAllBytes();
			String json = "";
			for (int i = 0; i < inp.length; i++) {
				json += (char) inp[i];
			}
			JSONParser jsonParser = new JSONParser();
			JSONObject innerObj = (JSONObject) jsonParser.parse(json);
			proj.setProject_id(Integer.parseInt(innerObj.get("project_id").toString()));
			proj.setName(innerObj.get("name").toString());
			proj.setDescription(innerObj.get("description").toString());
			proj.setScore(Integer.parseInt(innerObj.get("score").toString()));
			proj.setDeveloper_id(parsingUsuario((JSONObject)innerObj.get("developer_id")));
			proj.setOds_id(parsingODS((JSONObject)innerObj.get("ods_id")));
			http.disconnect();
		} catch (IOException | ParseException e) {
			e.printStackTrace();
		}

		return proj;
	}
	
	
	public static ODS askODS(int ods_id) throws IOException, ParseException {
		ArrayList<ODS> odslist = listOds();
		ODS ods = null;
		for (ODS odsAux : odslist) {
			if (odsAux.getOds_id() == ods_id) {
				ods = odsAux;
			}
		}
		return ods;
	}




	public static ArrayList<Users> listUsers() throws IOException, ParseException {
		url = new URL(sitio + "users/listUsers");
		String authStr = Base64.getEncoder().encodeToString("usuario:tiendagenerica".getBytes());
		HttpURLConnection http = (HttpURLConnection) url.openConnection();
		http.setRequestMethod("GET");
		http.setRequestProperty("Accept", "application/json");
		http.setRequestProperty("Authorization", "Basic " + authStr);
		InputStream respuesta = http.getInputStream();
		byte[] inp = respuesta.readAllBytes();
		String json = "";
		for (int i = 0; i < inp.length; i++) {
			json += (char) inp[i];
		}
		ArrayList<Users> lista = new ArrayList<Users>();
		//lista = parsingUsuarios(json);
		http.disconnect();
		return lista;
	}
	
	
	public static ArrayList<Projects> listProjectsByODS(int ods_id) throws IOException, ParseException {
		url = new URL(sitio + "proyects/proyects/ods/"+ods_id);
		HttpURLConnection http = (HttpURLConnection) url.openConnection();
		http.setRequestMethod("GET");
		http.setRequestProperty("Accept", "application/json");
		InputStream respuesta = http.getInputStream();
		byte[] inp = respuesta.readAllBytes();
		String json = "";
		for (int i = 0; i < inp.length; i++) {
			json += (char) inp[i];
		}
		ArrayList<Projects> lista = new ArrayList<Projects>();
		lista = parsingProjects(json);
		http.disconnect();
		return lista;
	}
	
	public static ArrayList<Projects> parsingProjects(String json) throws ParseException {
		JSONParser jsonParser = new JSONParser();
		ArrayList<Projects> list = new ArrayList<Projects>();
		JSONArray projects = (JSONArray) jsonParser.parse(json);
		Iterator<?> i = projects.iterator();
		while (i.hasNext()) {
			JSONObject innerObj = (JSONObject) i.next();
			Projects prodAux = new Projects();
			prodAux.setProject_id(Integer.parseInt(innerObj.get("project_id").toString()));
			prodAux.setName(innerObj.get("name").toString());
			prodAux.setDescription(innerObj.get("description").toString());
			prodAux.setScore(Integer.parseInt(innerObj.get("score").toString()));
			prodAux.setDeveloper_id(parsingUsuario((JSONObject)innerObj.get("developer_id")));
			prodAux.setOds_id(parsingODS((JSONObject)innerObj.get("ods_id")));
			list.add(prodAux);
		}
		return list;
	}

	

	public static Users parsingUsuario(JSONObject json) throws ParseException {
			Users user = new Users();
			user.setName(json.get("name").toString());
			user.setEmail(json.get("email").toString());
			user.setDescription(json.get("description").toString());
			user.setPasword(json.get("pasword").toString());
			user.setPhone(Integer.parseInt(json.get("phone").toString()));	
		return user;
	}
	
	public static ODS parsingODS(JSONObject json) throws ParseException {
		ODS ods = new ODS();
		ods.setOds_id(Integer.parseInt(json.get("ods_id").toString()));
		ods.setDescripcion(json.get("descripcion").toString());
		ods.setLogoPath(json.get("logoPath").toString());
	return ods;
	}
	
	
	public  Users getUserSession() {
		
		return userSession;
	}

	public void setUserSession(Users userSession) {
		this.userSession = userSession;
	}
}
