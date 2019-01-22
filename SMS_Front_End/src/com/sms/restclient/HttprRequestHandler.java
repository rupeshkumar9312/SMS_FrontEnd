package com.sms.restclient;

import java.io.DataInputStream;
import java.io.IOException;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONObject;


public class HttprRequestHandler {

	public String createRequest(String url)
	{
		HttpClient client = new DefaultHttpClient();
		HttpGet request = new HttpGet(url);
		JSONObject obj = null;
			HttpResponse response = null;
			try {
				response = client.execute(request);
				StringBuilder sb = new StringBuilder();
				DataInputStream in = new DataInputStream(response.getEntity().getContent()); 
//				System.out.println("Response " + in);
				String line;     
				while ((line = in.readLine()) != null) { 
					sb.append(line);
				} 
				in.close();
				System.out.println(sb);
				String json = sb.toString();
				return json;
				//obj = new JSONObject(json);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			
			return null;
			
	}
}
