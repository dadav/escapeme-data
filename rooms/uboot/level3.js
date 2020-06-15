
function printImage(img){
  var win = window.open('', 'Drucken');
  win.document.write('<html>'+
    '<head>'+
    '<style>'+
    '@page { size: A4 landscape; }'+
    '</style></head><body>'+
    '<img src="' + img.src + '">'+
    '</body></html>');
  win.document.close();
  win.print();
}
