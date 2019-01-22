package com.sms.restclient;

import com.sms.model.ChromeHistory;
import com.sms.model.DashBoardDetails;
import com.sms.model.LoginCredentials;
import com.sms.model.SortUrls;
import com.sms.model.Student;
import com.sms.model.StudentList;
import com.sms.model.Urls;

import jdk.nashorn.api.scripting.JSObject;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Request;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
public class RestClient {
	
//	Get history by user
	public void loadHistory(HttpServletRequest request, String query) throws JSONException
	{
		HttprRequestHandler handler = new HttprRequestHandler();
		String json = handler.createRequest(new Urls().history + query);
		System.out.println(json);
		List<ChromeHistory> list = new ArrayList<>();
		JSONArray arr = new JSONArray(json);
		System.out.println(arr.length());
		for(int i = 0;i < arr.length();i++)
		{
			JSONObject obj = arr.getJSONObject(i);
			 ChromeHistory ch  = new ChromeHistory();
			ch.setId(obj.getString("id"));
			ch.setTitle(obj.getString("title"));
			ch.setUrl(obj.getString("url"));
			ch.setUser(obj.getString("user"));
			ch.setVisitedTime(obj.getString("visitedTime"));
			list.add(ch);
		}
		
		request.setAttribute("history", list);
		
	}
	
	

	public String processLogin(LoginCredentials credentials,HttpServletRequest req) throws JSONException, ClientProtocolException, IOException {
		// TODO Auto-generated method stub


		HttpClient client = new DefaultHttpClient();
		HttpPost post = new HttpPost("http://localhost:6080/WebApi/admin/login");
		JSONObject json = new JSONObject();
		json.put("username", credentials.getPrn());
		json.put("password", credentials.getPassword());

		StringEntity entity = new StringEntity(json.toString());
		entity.setContentType("application/json");
		post.setEntity(entity);
		HttpResponse response = client.execute(post);
		//		response.getStatusLine();
		//		System.out.println("Status " + response.getStatusLine().getStatusCode());
		int status = response.getStatusLine().getStatusCode();
		if(status == 200)
		{
			return getDashboardDetails(req);
		}
		return "";
		/* BufferedReader rd = new BufferedReader(new InputStreamReader(response.getEntity().getContent()));

		  String line = "";

		  while ((line = rd.readLine()) != null) {

		   System.out.println(line);

		  }*/

		/*ObjectMapper obbj = new ObjectMapper();
		try {
//			String jsonString = obbj.defaultPrettyPrintingWriter().writeValueAs(credentials);
			String input = obbj.writerWithDefaultPrettyPrinter().writeValueAsString(credentials);
			System.out.println(input);

			URL url = new URL("http://localhost:3080/student/");
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Type", "application/json");

			OutputStream os = conn.getOutputStream();
			os.write(input.getBytes());
			os.flush();

			if (conn.getResponseCode() != HttpURLConnection.HTTP_CREATED) {
				throw new RuntimeException("Failed : HTTP error code : "
					+ conn.getResponseCode());
			}

			BufferedReader br = new BufferedReader(new InputStreamReader(
					(conn.getInputStream())));

			String output;
			System.out.println("Output from Server .... \n");
			while ((output = br.readLine()) != null) {
				System.out.println(output);
			}

			conn.disconnect();


		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/




	}

	public String getDashboardDetails(HttpServletRequest req) throws JSONException
	{
		String page = "index.jsp";
		HttpClient client = new DefaultHttpClient();
		HttpGet request = new HttpGet("http://localhost:6080/WebApi/admin/dashboard");
		try {
			HttpResponse response = client.execute(request);

			StringBuilder sb = new StringBuilder();
			DataInputStream in = new DataInputStream(response.getEntity().getContent()); 
			System.out.println("Response " + in);
			String line;     
			while ((line = in.readLine()) != null) { 
				sb.append(line);
			} 
			in.close();
			System.out.println(sb);
			String json = sb.toString();
			JSONObject obj = new JSONObject(json);
			System.out.println(obj.get("dac"));
			DashBoardDetails details = new DashBoardDetails(obj.get("total").toString(),obj.get("dac").toString(), obj.get("ditiss").toString());

			req.setAttribute("details", details);
			/*JSONArray arr = new JSONArray(sb.toString());
			JSONObject obj = arr.getJSONObject(0);*/


			//DashBoardDetails details = new DashBoardDetails(total,dac,ditiss);
			//req.setAttribute("dashboard", details);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} /*catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/

		request = new HttpGet("http://localhost:6080/WebApi/admin/urls");
		try {
			HttpResponse response = client.execute(request);
			StringBuilder sb = new StringBuilder();
			DataInputStream in = new DataInputStream(response.getEntity().getContent()); 
			System.out.println("Response " + in);
			String line;     
			while ((line = in.readLine()) != null) { 
				sb.append(line);
			} 
			in.close();

			JSONArray arr = new JSONArray(sb.toString());
			JSONObject obj = new JSONObject(arr);
			System.out.println(sb.toString());

			String [] keys = new String[obj.length()];
			Iterator itr = obj.keys();
			int index = 0; 
			while(itr.hasNext())
			{
				keys[index] = itr.next().toString();
				index++;
			}
			Map<String, Integer> map = new HashMap<>();
			for(int i = 0;i < keys.length;i++)
			{
				map.put(keys[i], obj.getInt((keys[i])));

			}
			Map<String,Integer> sortedMap = SortUrls.sortByComparator(map, SortUrls.DESC);
			req.setAttribute("urls", sortedMap);
			System.out.println("MAP Created " +sortedMap);


		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "index.jsp";
	}

	public String getStudents(HttpServletRequest req,String course) throws ClientProtocolException, IOException, JSONException
	{
		String page = "blank-page.jsp";
		/*System.out.println("Inside Get Students");
		Client client = ClientBuilder.newClient();
		System.out.println("Client Created " + client);
		WebTarget target = ClientBuilder.newClient().target("http://localhost:6080/student");
//		WebTarget target = client.target("http://localhost:6080/student");
		System.out.println("Target Set " + target);
		System.out.println(target.request(MediaType.APPLICATION_JSON).get(String.class));
		System.out.println("Output generated");*/

		String url = "";
		Urls api = new Urls();
		switch(course)
		{
		case "pgdac":
			url = api.pgdac;
			break;
		case "pgditiss":
			url = api.pgditiss;
			break;
		case "all":
			url = api.all;
			break;
			default:
				//TO DO
				//redirect to error page 
		}

		HttpClient client = new DefaultHttpClient();

		HttpGet request = new HttpGet(url);

		HttpResponse response = client.execute(request);



		StringBuilder sb = new StringBuilder();
		DataInputStream in = new DataInputStream(response.getEntity().getContent()); 
		String line;     
		while ((line = in.readLine()) != null) { 
			sb.append(line);
		} 
		in.close(); 




		List<Student> list = new ArrayList<>();
		JSONArray arr = new JSONArray(sb.toString());
		System.out.println(arr.length());
		for(int i = 0;i < arr.length();i++)
		{
			JSONObject obj = arr.getJSONObject(i);
			Student student = new Student();
			student.setSerialNo(i+1);
			student.setBatch(obj.getString("batch"));
			student.setCourse(obj.getString("course"));
			student.setEmail(obj.getString("email"));
			student.setName(obj.getString("name"));
			student.setPrn(obj.getString("prn"));
			student.setPassword(obj.getString("password"));
			list.add(student);
		}

		req.setAttribute("students", list);
		req.setAttribute("key", "k1");

		return page;

		/* Gson gson = new Gson();
		   StudentList list = gson.fromJson(sb.toString(), StudentList.class);
		   System.out.println(list);*/
		/*Student s = gson.fromJson(finalJson, Student.class);
		   System.out.println("Object " + s);
		 */
		/*
		   JSONArray array = new JSONArray(line);
		   System.out.println("JSON ARRAY LENGTH " + array.length() );
		 */
		//JsonArray arr = obj.getAsJsonArray();

		//		   Student st = new ObjectMapper().readValue(json, Student.class);
		//		   System.out.println(st);
		//		   StudentList list = gson.fromJson(finalJson, StudentList.class);
		//		   System.out.println(list);
		/* BufferedReader rd = new BufferedReader (new InputStreamReader(response.getEntity().getContent()));

		   System.out.println("response " +  rd);
		   String line = "";

		   while ((line = rd.readLine()) != null) {

			   System.out.println("Inside while loop");
		     System.out.println(line);

		   }*/

	}

	public String processRequest(HttpServletRequest request, String query) throws ClientProtocolException, IOException, JSONException {
		// TODO Auto-generated method stub
		String page = "student.jsp";
		
		loadHistory(request, query);
		
		HttpClient client = new DefaultHttpClient();
		HttpGet req = new HttpGet(new Urls().all + "/" + query);
		HttpResponse res = client.execute(req);
		StringBuilder sb = new StringBuilder();
		DataInputStream in = new DataInputStream(res.getEntity().getContent()); 
		String line;     
		while ((line = in.readLine()) != null) { 
			sb.append(line);
		} 
		in.close(); 
		JSONObject obj = new JSONObject(sb.toString());
		System.out.println(obj.get("email"));
		
		String name = obj.getString("name");
		String email = obj.getString("email");
		String course = obj.getString("course");
		String prn = obj.getString("prn");
		String batch = obj.getString("batch");
		
		Student st = new Student();
		st.setSerialNo(1);
		st.setName(name);
		st.setBatch(batch);
		st.setCourse(course);
		st.setEmail(email);
		st.setPrn(prn);
		request.setAttribute("students", st);
		
		System.out.println(sb);
		return page;
	}

}
