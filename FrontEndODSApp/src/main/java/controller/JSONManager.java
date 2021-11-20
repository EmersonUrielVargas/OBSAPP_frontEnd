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

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import model.Users;

public class JSONManager {

	private static URL url;
	private static String sitio = "http://localhost:5000/";

	// CRUD Clients


	// CRUD Users

	public static int addUser(Users usuario) throws IOException {
		int respuesta = 0;
		if (verifyUser(usuario.getId())) {
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
		lista = parsingUsuarios(json);
		http.disconnect();
		return lista;
	}

	public static ArrayList<Users> parsingUsuarios(String json) throws ParseException {
		JSONParser jsonParser = new JSONParser();
		ArrayList<Users> list = new ArrayList<Users>();
		JSONArray users = (JSONArray) jsonParser.parse(json);
		Iterator<?> i = users.iterator();
		while (i.hasNext()) {
			JSONObject innerObj = (JSONObject) i.next();
			Users user = new Users();
			user.setUser_id(Long.parseLong(innerObj.get("user_id").toString()));
			user.setUser_email(innerObj.get("user_email").toString());
			user.setUser_name(innerObj.get("user_name").toString());
			user.setPassword(innerObj.get("password").toString());
			user.setUser(innerObj.get("user").toString());
			list.add(user);
		}
		return list;
	}
}
