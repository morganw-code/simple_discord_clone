function setup() {
    var canvas = createCanvas(100, 100);
    canvas.parent('p5-canvas-holder');
    console.log("p5 loaded");
}

function draw() {
    ellipse(50, 50, 80, 80);
}