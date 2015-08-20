# RegForm
spring, mvc, maven, servlet registration form

1. Заявка на участие в телешоу " Чтобы подать заявку на участие , заполните все обязательные поля и нажмите на кнопку 'Отправить' "
2. поля имя, фамилия, отчество, кол-во лет, профессия, тел для обратной связи.
3. Сделать грамматическую ошибку, поле имя - 4 символа длиной, в этом поле при вводе: 
            вместо  "а" - "о";
            вместо  "б" - "п";
            вместо  "А" - "О";
            вместо  "Е" - "Ф";
            вместо  "И" - "ы";
            вместо  "О" - "К";
            вместо  "Я" - "В";.
4. Телефон - длина обрезана до 5 символов, уже введен +375.
5. Кнопка Отправить короткая, видно только Отправ
6. Слово отчество - мелким шрифтом. В выпадающем списке "Кол-во лет" диапазон от -50 до 1000 исключая 0.
7. Обязятельные поля "Фамилия", "Имя", "Отчество", "Телефон", последнее без проверки на обязательность !на сервере!.
8. После кнопки отправить - валидация и сообщение об ошибке или "Ваша заяка успешно принята".
9. Поле профессия - выпадающий список из (преподаватель, журналист, телеведущий, иное.) Иное - не выбирается.
10. Орфографические ошибки в словах "Телевеущий", "Професия".
11. Поле "Кол-во лет" вынесено посреди страницы, остальное по левому краю.
12. При заполнении всех полей заявка будет принята.
13. Поля "Фамилия", "Имя" и "Отчество" должны быть введены только кириллицей и только в верхнем регистре, иначе регистрации нет.
14. При отправке формы отправляет данные формы на почтовый ящик pavel.veinik@gmail.com
15. Для настройки почтового ящика отправителя необходимо:
            в строке final String USERNAME = "username for account email from"; внести логин входа на почту отправитель
            в строке final String PASSWORD = "password for account email from"; внести пароль входа на почту отправитель
            в строке props.put("mail.from","email from"); вместо email from ввести почтовый ящик отправитель
16. В аккаунте почтового ящика отправителя разрешить вход в аккаунт с непроверенных источников!!!!!!!!!!!! (иначе письмо не отправиться из-за автоматической блокировки доступа к почтовому ящику отправителю)
17. Для того чтобы использовать другие почтовые клиенты (не gmail.com) в строку String SMPT_HOSTNAME = "smtp.gmail.com"; внесите хост того поставщика электронной почты, который Вы используете.
18. Удачи!

