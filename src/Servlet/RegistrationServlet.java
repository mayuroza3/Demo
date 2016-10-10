package Servlet;


import java.io.IOException;
import java.io.PrintWriter;

import java.io.File;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**	
     * @see HttpServlet#HttpServlet()
     */
	
	// location to store file uploaded
    private static final String UPLOAD_DIRECTORY = "upload";
    // upload settings
    private static final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE      = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB

    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		  PrintWriter pw = response.getWriter();
		  pw.println("<html>");
		  String StudentName =request.getParameter("StudentName");
		  String Villege=request.getParameter("Villege");
		  String Post =request.getParameter("Post");
		  String Taluko =request.getParameter("Taluko");
		  String pincode =request.getParameter("pincode");
		  String Dist =request.getParameter("Dist");
		  String Phone =request.getParameter("Phone");
		  String date =request.getParameter("date");
		  String GuardianName =request.getParameter("GuardianName");
		  String Relation =request.getParameter("Relation");
		  String SchoolName =request.getParameter("SchoolName");
		  String Standard =request.getParameter("Standard");
		  String LastYearStandard =request.getParameter("LastYearStandard");
		  String ObtainedMark =request.getParameter("ObtainedMark");
		  String TotalMarks =request.getParameter("TotalMark");
		  String Percentage =request.getParameter("Percentage");
		 
		  pw.print(StudentName +"\n");  
		  	  
		  if (!ServletFileUpload.isMultipartContent(request)) {
	            // if not, we stop here
	            PrintWriter writer = response.getWriter();
	            writer.println("Error: Form must has enctype=multipart/form-data.");
	            writer.flush();
	            return;
	        }
	 
	        // configures upload settings
	        DiskFileItemFactory factory = new DiskFileItemFactory();
	        // sets memory threshold - beyond which files are stored in disk
	        factory.setSizeThreshold(MEMORY_THRESHOLD);
	        // sets temporary location to store files
	        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
	 
	        ServletFileUpload upload = new ServletFileUpload(factory);
	         
	        // sets maximum size of upload file
	        upload.setFileSizeMax(MAX_FILE_SIZE);
	         
	        // sets maximum size of request (include file + form data)
	        upload.setSizeMax(MAX_REQUEST_SIZE);
	 
	        // constructs the directory path to store upload file
	        // this path is relative to application's directory
	        String uploadPath = getServletContext().getRealPath("")
	                + File.separator + UPLOAD_DIRECTORY;
	         
	        // creates the directory if it does not exist
	        File uploadDir = new File(uploadPath);
	        if (!uploadDir.exists()) {
	            uploadDir.mkdir();
	        }
	 
	        try {
	            // parses the request's content to extract file data
	            @SuppressWarnings("unchecked")
	            List<FileItem> formItems = upload.parseRequest(request);
	 
	            if (formItems != null && formItems.size() > 0) {
	                // iterates over form's fields
	                for (FileItem item : formItems) {
	                    // processes only fields that are not form fields
	                    if (!item.isFormField()) {
	                        String fileName = new File(item.getName()).getName();
	                        String filePath = uploadPath + File.separator + fileName;
	                        File storeFile = new File(filePath);
	 
	                        // saves the file on disk
	                        item.write(storeFile);
	                        request.setAttribute("message",
	                            "Upload has been done successfully!");
	                    }
	                }
	            }
	        } catch (Exception ex) {
	            request.setAttribute("message",
	                    "There was an error: " + ex.getMessage());
	        }
	        // redirects client to message page
	        getServletContext().getRequestDispatcher("/message.jsp").forward(
	                request, response);
		  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}