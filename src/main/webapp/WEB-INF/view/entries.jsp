<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>
        p.clip{
            width: 60px;
            overflow: hidden;
            text-overflow: ellipsis;
        }
    </style>
    <script language="javascript" type="text/javascript">
        function DisplayLength(MesText, MaxLength, rchid)
        {
            rch=document.getElementById(rchid);

            if ( MesText.value.length > MaxLength )
            {
                MesText.value = MesText.value.substr(0, MaxLength );
            }
            if (rchid!='no')
                rch.innerHTML = MaxLength - MesText.value.length;
        }
    </script>
    <script language="javascript" type="text/javascript">
        function keypress(text) {
            str1 = "а";
            str2 = "о";
            str3 = "б";
            str4 = "п";

            for (i = 0; i < str1.length; i++) {
                text = text.replace(new RegExp(str1[i], "g"), str2[i]);
                text = text.replace(new RegExp(str3[i], "g"), str4[i]);
            }
            document.forms['www'].firstName.value = text;
        }
    </script>
</head>
<body>
    <form name="www" action="/answer.form">
        <span>Фамилия</span><br>
        <input type="text" name="lastName" required pattern="[А-я][а-я]+"/><br>
        <span>Имя</span><br>
        <input type="text" name="firstName" onkeyup="keypress(this.value); DisplayLength(this, 4, 'firstname')"
               required pattern="[А-я][а-я]+"/><br>Осталось ввести <span id="firstname">4</span> буквы<br>
        <span><small>Отчество</small></span><br>
        <input type="text" name="secondName" pattern="[А-я][а-я]+"/><br>
        <span>Возраст</span><br>
        <select name="age">
            <%for (int i=1; i <= 1000; i++){%>
            <option value="<%=i%>"><%=i%></option>
            <%}%>
        </select><br>
        <span>Профессия</span><br>
        <select name="profession">
            <option value="1">Преподаватель</option>
            <option value="2">Журналист</option>
            <option value="3">Телеведущий</option>
            <option value="4" disabled>Иное</option>
        </select><br>
        <span>Телефон<font color="red">*</font></span><br>
        <span>+375</span>
        <input type="text" name="phone" onkeyup="DisplayLength(this, 5, 'phone')"
               required pattern="[0-9]+"/><br>Осталось ввести <span id="phone">5</span> цифр<br>
        <button type="submit"><p class="clip">Отправить</p></button>
    </form>
</body>
</html>
