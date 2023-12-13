function cambiarColorTarjeta() {
    // Obtener la tarjeta por su ID
    var tarjeta = document.getElementById("miCard");

    var miCard = document.getElementById("miCard");
    miCard.style.display = "block"; 

    // Cambiar el color de fondo de la tarjeta
    tarjeta.style.backgroundColor = "lightblue"; // Cambia "blue" al color que desees

    var contentcard = document.getElementById("micontent");
    var contentcard2 = document.getElementById("micontent2");

    setTimeout(function () {
        tarjeta.style.backgroundColor = "lightgreen"; // Cambia "lightblue" al color que desees
        contentcard.textContent = "Orden lista";
        contentcard2.textContent = "Favor pasar a recoger su orden!";

    }, 15000); 
}