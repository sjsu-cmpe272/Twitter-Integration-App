<%@ page language="java" import="org.json.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="./twitterAPIs.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Here are your tweets</title>
</head>
<body>
	<h4>Here are your tweets you posted</h4>
	<table>
		<thead>
   			<tr>
   				<th>Created At</th>
   				<th>Tweet Says</th>
   			</tr>
   		</thead>
   		<tbody>
	<%
	String tweetsStr = request.getAttribute("tweets").toString();
	JSONArray tweets = new JSONArray(tweetsStr);
	JSONObject tweet;
		for (int i = 0; i < tweets.length(); i++)
		{
			tweet = tweets.getJSONObject(i);
			%><tr>
				<td>
				<%=tweet.getString("created_at")%>
				</td>
				<td>
				<%=tweets.getJSONObject(i).getString("text")%>
				</td>
			</tr>
		<%}
	%>
	</tbody>
	</table>
</body>
</html>