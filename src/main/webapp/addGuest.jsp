<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add New Guest</title>

    <style>
        .field {
            clear: both;
            text-align: right;
            line-height: 25px;
        }

        label {
            float: left;
            padding-right: 10px;
        }

        .main {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100%;
        }
    </style>
</head>
<body>
<div class="main">
    <form name="guestForm" action="GuestController" method="post">

        <div class="field">
            <label for="firstName">Ім'я:</label>
            <input id="firstName" type="text" name="firstName" placeholder="Name" required="required" autofocus="autofocus">
        </div>

        <div class="field">
            <label for="lastName">Прізвище:</label>
            <input id="lastName" type="text" name="lastName" placeholder="Surname" required="required">
        </div>

        <div class="field">
            <label for="birthday">Дата народження:</label>
            <input id="birthday" type="date" name="birthday" placeholder="YYYY-MM-DD" required="required"
                   pattern="[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])" title="Date format YYYY-MM-DD">
        </div>

        <div class="field">
            <label for="phoneNumber">Телефон:</label>
            <input id="phoneNumber" type="tel" name="phoneNumber" placeholder="+38(XXX)XXX-XX-XX" required="required"
                   pattern="[\+]38[\(]\d{3}[\)]\d{3}[\-]\d{2}[\-]\d{2}"
                   title="Phone number format +38(XXX)XXX-XX-XX">
        </div>

        <div class="field">
            <label for="email">Електронна пошта:</label>
            <input id="email" type="email" name="email" placeholder="e-mail" required="required">
        </div>

        <div class="field">
            <label for="country">Країна:</label>
            <input id="country" type="text" name="country" placeholder="Country" required="required">
        </div>

        <div class="field">
            <label for="city">Місто(область):</label>
            <input id="city" type="text" name="city" placeholder="City" required="required">
        </div>

        <br>
        <input type="submit">

    </form>
</div>

</body>
</html>
