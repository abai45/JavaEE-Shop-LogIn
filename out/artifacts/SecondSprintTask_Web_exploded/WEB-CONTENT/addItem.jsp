<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            font-family: sans-serif,Arial;
            margin: 0;
            padding: 0;
        }
        #openPopupButton {
            background-color: #0281cf;
            font-size: 18px;
            color: #fff;
            padding: 10px 20px;
            margin-bottom: 20px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
        }

        .mainContent {
            margin: 0 auto;
            margin-top: 20px;
            width: 70%;
            gap:20px;
        }

        input, select  {
            width: 800px;
            border: none;
            font-size: 18px;
            margin-top: 5px;
            padding: 5px 10px;
        }
        .popup__inputArea {
            padding: 20px 10px;
            line-height: 28px;
        }
        #openPopupButton:hover {
            background-color: #026aa7;
            box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.3);
        }

        .popup {
            opacity: 0;
            visibility: hidden;
            transition: opacity 0.3s ease, visibility 0.3s ease;
            position: fixed;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.8);
            top: 0;
            left: 0;
        }

        .popup__body {
            min-height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .popup__content {
            background-color: #fff;
            color: #000;
            max-width: 900px;
            padding: 30px;
            border-radius: 3px;
        }

        .popup_buttons {
            display: flex;
            justify-content: flex-end;
            margin-top: 20px;
            gap: 20px;
        }

        .popup__close,
        .popup__save,
        .popup__delete{
            font-size: 15px;
            text-decoration: none;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            background-color: #63903a;
            border: none;
        }

        .popup__close,
        .popup__delete{
            background-color: #a91818;
        }

        .popup__title {
            font-size: 40px;
            margin: 0 0 1em;
        }

        input,textarea {
            margin-bottom: 20px;
            margin-top: 10px;
        }
        textarea {
            width: 100%;
            height: 200px;
            border: none;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <div class="mainContent">
        <button id="openPopupButton">+ Add Item</button>
        <div id="popup" class="popup">
            <div class="popup__body">
                <form action="/addItem" method="post">
                    <div class="popup__content">
                        <div class="popup__title">Добавление продукта</div>
                        <div class="popup__text">
                            Наименование:
                        </div>
                        <input type="text" class="popup__inputTitle" placeholder="Наименование" name="taskName">
                        <div class="popup__text">
                            Описание:
                        </div>
                        <textarea type="text" class="popup__inputArea" placeholder="Описание" name="taskDesc"></textarea>
                        <div class="popup__text">
                            Крайний срок:
                        </div>
                        <input type="date" class="popup__inputDeadline" name="taskDeadline">
                        <div class="popup_buttons">
                            <a class="popup__close" href="#">Закрыть</a>
                            <button type="submit" class="popup__save">Сохранить</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script>
        <%@include file="vendor/src/js.js"%>
    </script>
</body>
</html>
