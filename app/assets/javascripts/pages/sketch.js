var positions = { };
var entries = 0;
var width = 0;
var height = 0;

function generatePositions() {
    for(n = 0; n < 10000; n++) {
        positions[n] = new Array(Math.floor(Math.random() * width), Math.floor(Math.random() * height));
    }
}

function setup() {
    let container = document.getElementById("p5-canvas-holder");
    width = container.offsetWidth;
    height = container.offsetHeight;
    let canvas = createCanvas(width, height);
    canvas.parent("p5-canvas-holder");
    console.log("p5 loaded");
    generatePositions();
    entries = Object.entries(positions);
}

function draw() {
    clear();
    for(const [n, arr] of entries) {
        ellipse(arr[0], arr[1], 5, 5);
    }

    // updatePositions();
}

function updatePositions() {
    for([n, arr] of entries) {
        arr[0] += 1;
        arr[1] += 1;
    }
}