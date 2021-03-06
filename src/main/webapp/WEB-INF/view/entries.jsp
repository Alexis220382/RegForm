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
            var rch=document.getElementById(rchid);
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
            var str1 = "а";
            var str2 = "о";
            var str3 = "б";
            var str4 = "п";
            var str5 = "А";
            var str6 = "О";
            var str7 = "Е";
            var str8 = "Ф";
            var str9 = "И";
            var str10 = "ы";
            var str11 = "О";
            var str12 = "К";
            var str13 = "Я";
            var str14 = "В";
            for (var i = 0; i < str1.length; i++) {
                text = text.replace(new RegExp(str1[i], "g"), str2[i]);
                text = text.replace(new RegExp(str3[i], "g"), str4[i]);
                text = text.replace(new RegExp(str5[i], "g"), str6[i]);
                text = text.replace(new RegExp(str7[i], "g"), str8[i]);
                text = text.replace(new RegExp(str9[i], "g"), str10[i]);
                text = text.replace(new RegExp(str11[i], "g"), str12[i]);
                text = text.replace(new RegExp(str13[i], "g"), str14[i]);
            }
            document.forms['www'].firstName.value = text;
        }
    </script>
</head>
<body>
<span>Чтобы подать заявку на участие заполните все <br>
    обязательные поля и нажмите 'Отправить'</span>
<form name="www" action="/answer.form">
    <span>Фамилия<font color="red">*</font></span><br>
    <input type="text" name="lastName" pattern="[А-Яа-я]+"/><br>
    <span>Имя<font color="red">*</font></span><br>
    <input type="text" name="firstName" onkeyup="keypress(this.value); DisplayLength(this, 4, 'firstname')"
           pattern="[А-Яа-я]+"/><br>Осталось ввести <span id="firstname">4</span> буквы<br>
    <span><small>Отчество</small><font color="red">*</font></span><br>
    <input type="text" name="secondName" pattern="[А-Яа-я]+"/><br>
    <p align="center">Кол-во лет</p><br>
    <select name="age">
        <%for (int i=-50; i < 0; i++){%>
        <option value="<%=i%>"><%=i%></option>
        <%}%>
        <%for (int i=1; i <= 1000; i++){%>
        <option value="<%=i%>"><%=i%></option>
        <%}%>
    </select><br>
    <span>Професия</span><br>
    <select name="profession">
        <option value="Преподаватель">Преподаватель</option>
        <option value="Журналист">Журналист</option>
        <option value="Телевеущий">Телевеущий</option>
        <option value="Иное" disabled>Иное</option>
    </select><br>
    <span>Телефон<font color="red">*</font></span><br>
    <span>+375</span>
    <input type="text" name="phone" onkeyup="DisplayLength(this, 5, 'phone')"
           pattern="[0-9]+"/><br>Осталось ввести <span id="phone">5</span> цифр<br>
    <button type="submit"><p class="clip">Отправить</p></button>
</form>
</body>
</html>
