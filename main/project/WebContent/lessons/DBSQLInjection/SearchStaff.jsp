<%@ page contentType="text/html; charset=ISO-8859-1" language="java" 
	import="org.owasp.webgoat.session.*, org.owasp.webgoat.lessons.DBSQLInjection.DBSQLInjection" 
	errorPage="" %>
	<div id="lesson_search">
			<% 
			WebSession webSession = ((WebSession)session.getAttribute("websession"));
			String searchedName = request.getParameter(DBSQLInjection.SEARCHNAME);
			if (searchedName != null)
			{
			%>
				Employee <%=searchedName%> not found.
			<%
			}
			%>
			<form id="form1" name="form1" method="post" action="<%=webSession.getCurrentLesson().getFormAction()%>">
			    	<label>Name
					<input class="lesson_text_db" type="text" name="<%=DBSQLInjection.SEARCHNAME%>"/>
		        </label>
				<br>
				<input type="submit" name="action" value="<%=DBSQLInjection.FINDPROFILE_ACTION%>"/>
			</form>
	</div>