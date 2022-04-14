<%@page import="java.sql.*"%>
<html>
<head>
<title>Thank You</title>
<style>
      * {
        top: 0px;
        right: 0px;
        bottom: 0px;
        left: 0px;
        margin: 0px;
        padding: 0px;
        font-family: "Otomanopee One", sans-serif;
      }
      #logo {
        position: absolute;
        z-index: -5;
        width: 100%;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        background: url("logotrans.png") no-repeat center center/cover;
      }
      #tnx {
        width: 50%;
        height: 95vh;
      }
      h2 {
        margin-top: 2%;
      }
       }
      .btn {
        width: 70px;
        padding: 3px;
        border-radius: 10px;
      }
      .btn:hover {
        color: white;
        background: black;
      }
    </style>
</head>
<body>
<%

int i;
String quan[] = new String[5];
String[] items = new String[5];
String name;
String mobile;
String email;

for (i = 1; i < 5; i++) 
{ 
	quan[i] = "0"; 
	items[i] = "null";
}

name = (String)session.getAttribute("username"); 

items[0] = request.getParameter("item1");
items[1] = request.getParameter("item2");
items[2] = request.getParameter("item3");
items[3] = request.getParameter("item4");
items[4] = request.getParameter("item5");

quan[0] = request.getParameter("quan1");
quan[1] = request.getParameter("quan2");
quan[2] = request.getParameter("quan3");
quan[3] = request.getParameter("quan4");
quan[4] = request.getParameter("quan5");

try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/donations","root","hem");
    Statement st = con.createStatement();
    st.executeUpdate("insert into donation_record (Name,Item1,Quan1,Item2,Quan2,Item3,Quan3,Item4,Quan4,Item5,Quan5) values('"+name+"','"+items[0]+"','"+quan[0]+"','"+items[1]+"','"+quan[1]+"','"+items[2]+"','"+quan[2]+"','"+items[3]+"','"+quan[3]+"','"+items[4]+"','"+quan[4]+"')");
    
    //out.println("Thank you for the donation"+"<br><br>"+"Name: "+name+"<br>"+"Item: "+items[0]+"\t"+"Quantity: "+quan[0]+"<br>"+"<br>"+"Item: "+items[1]+"\t"+"Quantity: "+quan[1]+"<br>"+"<br>"+"Item: "+items[2]+"\t"+"Quantity: "+quan[2]+"<br>"+"<br>"+"Item: "+items[3]+"\t"+"Quantity: "+quan[3]+"<br>"+"<br>"+"Item: "+items[4]+"\t"+"Quantity: "+quan[4]+"<br>");
}
catch(Exception e)
{
    out.println(e);
    out.println("<br>"+"Error occured!!"+"<br>"+"Try again later");
}
%>
<%
 
 	response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");	
 
 	if(session.getAttribute("username")==null)
 	{
 		response.sendRedirect("login.jsp");
 	}
 %>

<div id="logo">
      <div id="tnx">
        <h2 align="center">Thank you for the donation ${username}</h2>
        <center>
          <table cellpadding="5" cellspacing="50">
            <tr>
              <th align="center">ITEM</th>
              <th align="center">Quantity</th>
            </tr>
            <tr>
              <td align="center"><%out.println(items[0]); %></td>
              <td align="center"><%out.println(quan[0]); %></td>
            </tr>
            <tr>
              <td align="center"><%out.println(items[1]); %></td>
              <td align="center"><%out.println(quan[1]); %></td>
            </tr>
            <tr>
              <td align="center"><%out.println(items[2]); %></td>
              <td align="center"><%out.println(quan[2]); %></td>
            </tr>
            <tr>
              <td align="center"><%out.println(items[3]); %></td>
              <td align="center"><%out.println(quan[3]); %></td>
            </tr>
            <tr>
              <td align="center"><%out.println(items[4]); %></td>
              <td align="center"><%out.println(quan[4]); %></td>
            </tr>
          </table>
        </center>
        <h3 align="center">Our team will reach you soon &#128150; &#128150;</h3>
       
          
        
      </div>
    </div>
    <button class="btn" onclick="location.href = 'welcome.jsp';">Go Back</button>
          <form action="logout" method="post"><input type="submit" value="Logout" class="btn" /></form>
</body>
</html>
