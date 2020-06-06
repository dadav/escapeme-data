
function moveTorch(event){
  var torch = document.getElementById("torch");
  if (event.target.id != 'light') {
    torch.style.clipPath = `circle(40px at ${event.offsetX}px ${event.offsetY}px)`;
  }
}

function turnOnLight(){
  var room = document.getElementById("room-container");
  var darkRoom = document.getElementById("dark-room-container");
  var info = document.getElementById("light-on-text");
  darkRoom.style.display = "none";
  room.style.display = "";
  info.style.display = "";
}

function openNote(){
  var note = document.getElementById("note");
  note.style.display = "";
}
