<%@page import="database.*,java.sql.*,java.util.*"%>


<%
int uid=0;
String name = request.getParameter("name");
String htno = request.getParameter("htno");
String email = request.getParameter("email");
String pass = request.getParameter("password");
String contact = request.getParameter("contact");
String pic = request.getParameter("pic");

Connection con=databasecon.getconnection();
Statement st=null;
Statement stm;
Statement stmt=null;
ResultSet rs=null;
stm=con.createStatement();
ResultSet rsm=stm.executeQuery("select email from mregister where email='"+email+"' ");
if(rsm.next()){
	response.sendRedirect("mregistration.jsp?email=already");


}

else{
st=con.createStatement();
rs=st.executeQuery("select max(id) from mregister");
if(rs.next())
{
	uid=rs.getInt(1);
	++uid;

}
stmt=con.createStatement();
int i = stmt.executeUpdate("insert into mregister (id,uname,htno,email,pass,phno,pic,status_r)values('"+uid+"','"+name+"','"+htno+"','"+email+"','"+pass+"','"+contact+"','"+pic+"','register')");

if(i>0){
response.sendRedirect("mregistration.jsp?msg1=succ");
}else{
response.sendRedirect("mregistration.jsp?msg=unsucc");
}
}
%>