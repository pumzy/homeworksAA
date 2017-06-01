document.addEventListener("DOMContentLoaded", function(){
let canvasel = document.getElementById("mycanvas")
canvasel.width = 500
canvasel.height = 500
let ctx = canvasel.getContext('2d')
ctx.fillStyle = 'blue'
ctx.fillRect(20,300,300,300)
ctx.beginPath();
ctx.arc(400,75,50,0*Math.PI,2*Math.PI)
ctx.strokeStyle = 'red'
ctx.fillStyle = 'black'
ctx.fill();
ctx.lineWidth = 20
ctx.stroke();

ctx.beginPath();
ctx.arc(75, 75, 50, 0, Math.PI * 2, true);
ctx.moveTo(110, 75);
ctx.arc(75, 75, 35, 0, Math.PI, false);
ctx.moveTo(65, 65);
ctx.arc(60, 65, 5, 0, Math.PI * 2, true);
ctx.moveTo(95, 65);
ctx.arc(90, 65, 5, 0, Math.PI * 2, true);
ctx.lineWidth = 5
ctx.stroke();

});
