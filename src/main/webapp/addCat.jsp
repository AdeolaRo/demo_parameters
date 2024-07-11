<jsp:useBean id="cats" scope="request" type="java.util.ArrayList<org.example.demo_parameters.model.Cat>" />
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Formulaire Chat</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>

<div class="container"></div>

<h1> Le formulaire des Chats</h1>

<form action="form" method="post">

    <div>
        <label for="name">Name :</label>
        <input type="text" id="name" name="name">
    </div>

    <div>
        <label for="race">Race :</label>
        <input type="text" id="race" name="race">
    </div>

    <div>
        <label for="favFood">Favorite Food :</label>
        <input type="text" id="favFood" name="favFood">
    </div>

    <div>
        <label for="birthDate">Birth Date :</label>
        <input type="date" id="birthDate" name="birthDate">
    </div>

    <button> Ajouter </button>

</form>

<table class="table table-dark text-center align-middle">
    <thead>
    <tr>
        <th>#</th>
        <th>Nom</th>
        <th>Race</th>
        <th>Repas</th>
        <th>Date de Naissance</th>
    </tr>
    </thead>
    <tbody>

<% for (int i = 0;i < cats.size();i++) { %>
<tr>
    <td><%= i+1 %></td>
    <td><%= cats.get(i).getName() %></td>
    <td><%= cats.get(i).getRace() %></td>
    <td><%= cats.get(i).getFavFood() %></td>
    <td><%= cats.get(i).getBirthDate() %></td>
</tr>
<% } %>
    </tbody>

</table>

</body>
</html>
