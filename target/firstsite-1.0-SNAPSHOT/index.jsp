<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="style/style.css">
  <title>HW</title>
</head>

<body>
  <header>
    <div class="container">
      <div class="row">
        <img class="header-logo" src="img/electricity.png" alt="logo">
        <a class="header-name" href="#">Опитування:<br>Шилов Вадим Олегович</a>
      </div>
    </div>
  </header>
  <main>
    <div class="container">
      <h1>Дайте відповіді на 2 питання:</h1>
      <div class="test">
        <form name="loginForm" method="post" action="HelloServlet">
          <div class="form-question">
            <div>
              <p>Обери колір:</p>
              <div>
                <input class="form-red-input" type="radio" id="colorChoice1" name="color" value="red">
                <label class="form-red" for="colorChoice1">Червоний</label>
                <input class="form-blue-input" type="radio" id="colorChoice2" name="color" value="blue">
                <label class="form-blue" for="colorChoice2">Синій</label>
              </div>
            </div>
            <div>
              <p>Обери фігуру:</p>
              <div>
                <input class="form-circle-input" type="radio" id="formChoice1" name="form" value="circle">
                <label class="form-circle" for="formChoice1">Коло</label>
                <input class="form-square-input" type="radio" id="formChoice2" name="form" value="square">
                <label class="form-square" for="formChoice2">Квадрат</label>
              </div>
            </div>
          </div>
          <button type="submit">ВІДПРАВИТИ<br>ДАНІ</button>
        </form>
      </div>
      <div style="text-align: center; line-height: 30px;">
        <h2>Таблиця результатів</h2>
        <div style="display: flex; margin: 20px; justify-content: space-between;">
          <div style="width: calc(25% - 10px); height: 250px; border: 1px solid black; display: flex; align-items: center; justify-content: center;">
            <div class="red-circle"><p>Червне коло обрали<br>${redCircle}<br>разів</p></div>
          </div>
          <div style="width: calc(25% - 10px); height: 250px; border: 1px solid black; display: flex; align-items: center; justify-content: center;">
            <div class="blue-circle"><p>Сине коло обрали<br>${blueCircle}<br>разів</p></div>
          </div>
          <div style="width: calc(25% - 10px); height: 250px; border: 1px solid black; display: flex; align-items: center; justify-content: center;">
            <div class="red-square"><p>Червоний квадрат обрали<br>${redSquare}<br>разів</p></div>
          </div>
          <div style="width: calc(25% - 10px); height: 250px; border: 1px solid black; display: flex; align-items: center; justify-content: center;">
            <div class="blue-square"><p>Синій квадрат обрали<br>${blueSquare}<br>разів</p></div>
          </div>
        </div>
      </div>
    </div>
  </main>
</body>

</html>