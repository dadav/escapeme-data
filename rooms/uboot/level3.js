
function printImage(img){
  var win = window.open('', 'Drucken');
  win.document.write('<img src="' + img.src + '">');
  win.document.close();
  win.print();
}
