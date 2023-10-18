"use strict";
const endPoint = "https://api.chucknorris.io/jokes/random";
const img = document.getElementById("chuckImg");
fetch(endPoint)
    .then((response) => response.json())
    .then((data) => {
    document.getElementById("chuckText").innerText = data.value;
})
    .catch((error) => {
    console.error('Error:', error);
});
img === null || img === void 0 ? void 0 : img.addEventListener("click", function () {
    location.reload();
});
