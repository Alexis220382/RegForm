# RegForm
spring, mvc, maven, servlet registration form

Заявка на участие в телешоу
поля имя, фамилия, отчество, кол-во лет, профессия, тел для обратной связи.
Сделать грамматическую ошибку, поле имя - 4 символа длиной, в этом поле при вводе: вместо а - о, вместо б - п.
Телефон - длина обрезана до 5 символов, уже введен +375.
Кнопка Отправить короткая, видно только Отправ
Слово отчество - мелким шрифтом, кол-во лет - до 1000, можно отрицательные.
Если задано поле отчество - ошибка.
Поле телефон - обязательное *, по без проверки на обязательность.
После кнопки отправить - валидация и сообщение об ошибке или "Ваша заяка успешно принята".
Поле профессия - выпадающий список из (преподаватель, журналист, телеведущий, иное.) Иное - не выбирается.
