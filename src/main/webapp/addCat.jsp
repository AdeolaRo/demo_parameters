<jsp:useBean id="cats" scope="request" type="java.util.ArrayList<org.example.demo_parameters.model.Cat>"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Formulaire Chat</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>

<div class="container">

    <h1 class="text-center"> Le formulaire des Chats</h1>

    <hr>
    <div class="form-container text-bg-secondary col-6 offset-3">
        <form action="form" method="post" class="mb-3 row" class="text-bg-light p-3">

            <div>
                <label for="name" class="col-sm-2 col-form-label mt-10 ml-5">Name :</label>
                <input type="text" id="name" name="name">
            </div>

            <div>
                <label for="race" class="col-sm-2 col-form-label">Race :</label>
                <input type="text" id="race" name="race">
            </div>

            <div>
                <label for="favFood" class="col-sm-2 col-form-label">Favorite Food :</label>
                <input type="text" id="favFood" name="favFood">
            </div>

            <div>
                <label for="birthDate" class="col-sm-2 col-form-label">Birth Date :</label>
                <input type="date" id="birthDate" name="birthDate" required>
            </div>

            <hr>

            <div class="mb-1 col-first">
                <button class="btn btn-warning"> Ajouter</button>
            </div>

        </form>
    </div>
    <table class="table table-dark text-center align-middle col-8">
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

        <% for (int i = 0; i < cats.size(); i++) { %>
        <tr>
            <td><%= i + 1 %>
            </td>
            <td><%= cats.get(i).getName() %>
            </td>
            <td><%= cats.get(i).getRace() %>
            </td>
            <td><%= cats.get(i).getFavFood() %>
            </td>
            <td><%= cats.get(i).getBirthDate().getDayOfMonth()+" / " +cats.get(i).getBirthDate().getMonthValue()+" / " +cats.get(i).getBirthDate().getYear()%>
            </td>
        </tr>
        <% } %>
        </tbody>

    </table>
</div>
</body>
</html>
