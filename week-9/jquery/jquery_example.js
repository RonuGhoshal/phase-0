// U3.W9:JQuery


// I worked on this challenge by myself
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 1:
  //link the image

//RELEASE 2:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 3:
  //Add code here to select elements of the DOM
bodyElement = $('body')
h1Element = $('h1')[0]
mascotClass = $('.mascot')
//RELEASE 4:
  // Add code here to modify the css and html of DOM elements
$('body>h1').css('color', 'red')
$('body>h1').css('border', '5px dashed')
$('body>h1').css('visibility', 'hidden')
$('body>h1').html('SEA LIONS')
$('body>h1').css('visibility', 'visible')

//RELEASE 5: Event Listener
  $('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://web.stanford.edu/~siegelr/galapagos/galapagos2010/IMG_9833%20sea%20lion%20resize.jpg')
  })

  $('img').on('mouseout', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
  })



//RELEASE 6: Experiment on your own

$('img').click(function () {
  $('img').animate({
    width: '50%',
    height: '50%',
  })
})




})  // end of the document.ready function: do not remove or write DOM manipulation below this.