package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import model.Users;

/**
 * Servlet implementation class ServletApp
 */
@WebServlet("/ServletApp")
public class ServletApp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletApp() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String createUser = request.getParameter("createUser");
		String updateUser = request.getParameter("updateUser");
		String logInUser = request.getParameter("logIn_user");
		if (createUser != null) {
			this.addUser(request, response);
		}
		if(logInUser != null) {
			this.logInUser(request, response);
		}
		if (updateUser != null) {
			this.updateUser(request, response);
		}
	}

	private void updateUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Users user = JSONManager.getJSONManager().getUserSession();
		user.setName(request.getParameter("updateU_name"));
		user.setDescription(request.getParameter("updateU_descr"));
		user.setPasword(request.getParameter("updateU_password1"));
		user.setPhone(Integer.parseInt(request.getParameter("updateU_phone")));
		int result = JSONManager.updateUser(user);
		if (result ==200) {
			JSONManager.getJSONManager().setUserSession(user);
			RequestDispatcher dispacher = getServletContext().getRequestDispatcher("/index.jsp");
			try {
				dispacher.forward(request, response);
			} catch (ServletException e) {
				e.printStackTrace();
			}
		}
		
		
	}

	private void logInUser(HttpServletRequest request, HttpServletResponse response) {
		String logIn_email = request.getParameter("loginU_email");
		String logIn_password = request.getParameter("loginU_password");
		Users user = JSONManager.askUser(logIn_email);
		if (user != null) {
			RequestDispatcher dispacher =null;
			if (logIn_password.equals(user.getPasword())) {
				JSONManager.getJSONManager().setUserSession(user);
				dispacher = getServletContext().getRequestDispatcher("/index.jsp");
				
			}else {
				dispacher = getServletContext().getRequestDispatcher("/Login.jsp");
			}try {
				dispacher.forward(request, response);
			} catch (ServletException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		
	}

	public void addUser(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		Users user = new Users();
		user.setName(request.getParameter("u_create_name"));
		user.setEmail(request.getParameter("u_create_email"));
		user.setDescription(request.getParameter("u_create_descrpi"));
		user.setPasword(request.getParameter("u_create_password1"));
		user.setPhone(Integer.parseInt(request.getParameter("u_create_phone")));
		String inputN = "createU_photo";
		String image = addImage(request, "logo-"+user.getEmail(), inputN);
		int result = 0;
		boolean resultAdd = false;
		result = JSONManager.addUser(user);
		if (user != null) {
			RequestDispatcher dispacher = getServletContext().getRequestDispatcher("/index.jsp");
			try {
				dispacher.forward(request, response);
			} catch (ServletException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	private String addImage(HttpServletRequest request,String path,String inputName) throws IOException, ServletException {
		Part part = request.getPart(inputName);
		String context = request.getServletContext().getRealPath("resources"); 
		
		System.out.println("ruta con context " +context);
		
		String context2 = request.getServletContext().getRealPath("img"); 
		System.out.println("ruta con context para img " +context2);//img es la carpeta que he creado en mi proyecto, dentro de la carpeta Web Content. 

		part.write(context + File.separator + path); // Escribimos el archivo al disco duro del servidor.

		String fotoName = context2 + File.separator + path;

		return fotoName;//guardamos la ruta de la foto.
	}

		

}
