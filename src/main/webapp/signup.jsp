<%@page import="java.sql.*"%> 
<% 
String uname = request.getParameter("uname");
String password = request.getParameter("upass");
String name =request.getParameter("name"); 
String email = request.getParameter("uemail");
String mobile = request.getParameter("phno"); 
String pincode =request.getParameter("pincode"); 
String address = request.getParameter("address"); 
String str;
int exp_pin = 600001;
int pins[] = new int[200]; 
int pin = Integer.parseInt(pincode);
int i;
int x;
int len;

len = password.length();
len = len + 8;
char[] ch = new char[len];
for (i = 0; i < password.length(); i++) {
    ch[i] = password.charAt(i);

}
i = (password.length());
ch[i] = 's';
ch[i + 1] = 'u';
ch[i + 2] = 'r';
ch[i + 3] = 'a';
ch[i + 4] = 'k';
ch[i + 5] = 's';
ch[i + 6] = 'h';
ch[i + 7] = 'a';

for (i = 0; i < len; i++) {
    if (ch[i] >= 33 && ch[i] < 45) {
        ch[i] += 7;
    } else if (ch[i] >= 45 && ch[i] < 54) {
        ch[i] -= 7;
    } else if (ch[i] >= 54 && ch[i] < 65) {
        ch[i] += 7;
    } else if (ch[i] >= 65 && ch[i] < 80) {
        ch[i] -= 7;
    } else if (ch[i] >= 80 && ch[i] < 100) {
        ch[i] += 7;
    } else if (ch[i] >= 100 && ch[i] < 110) {
        ch[i] -= 7;
    } else if (ch[i] >= 110 && ch[i] < 119) {
        ch[i] += 7;
    } else if (ch[i] >= 119) {
        ch[i] -= 7;
    }

}

str = String.valueOf(ch);
x = 0;
for(i = 0;i<100;i++)
{
	pins[i] = exp_pin++;
}
for(i = 0; i<100;i++)
{
	if(pins[i] == pin)
	{
		x = 1;
		break;
	}
}

if(x == 1)
{
	

try{
	Class.forName("com.mysql.jdbc.Driver"); Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/donations","root","hem");
	Statement st = con.createStatement(); 
	st.executeUpdate("insert into login_details (uname,upass) values('"+uname+"','"+str+"')"); 

	st.executeUpdate("insert into user_details (uname,upass,name,email,mobile,pincode,address) values('"+uname+"','"+str+"','"+name+"','"+email+"','"+mobile+"','"+pincode+"','"+address+"')");

	response.sendRedirect("login.jsp"); 
} 
catch(Exception e) 
{ 
	out.println(e);
	out.println("<br />"+"Error!!....Try again later"); 
}

}

else
{
	out.println("Service is not available in your area.Application can't be processed");
}
%>
