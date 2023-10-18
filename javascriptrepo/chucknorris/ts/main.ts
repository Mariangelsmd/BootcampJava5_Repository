const endPoint = "https://api.chucknorris.io/jokes/random";
const img = document.getElementById("chuckImg");


fetch(endPoint)
    .then((response: Response) => response.json())
    .then((data) => {
        document.getElementById("chuckText")!.innerText = data.value;
    })
    .catch((error: Error) => {
        console.error('Error:', error);
    });


img?.addEventListener("click", function () {
    location.reload();
})