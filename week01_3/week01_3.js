function setup() {
    initializeFields();
    createCanvas(500, 500);
}

function draw() {
    background(color(0xA6, 0xD0, 0xF5));
    fill(color(0xEB, 0xF5, 0xA6));
    rect(100, 200, 100, 200);
    rect(mouseX, mouseY, 100, 200);
}

function initializeFields() {
}
