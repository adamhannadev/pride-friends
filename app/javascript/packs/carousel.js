let images = document.getElementsByClassName('image');
console.log(images);
let current = 0;

setInterval(function () {
    images[current].classList.remove("active");
    current++;
    if (current === images.length) {
        current = 0;
    }
    images[current].classList.add("active");
    console.log(`Current image id is - ${current}`);
}, 8000);



