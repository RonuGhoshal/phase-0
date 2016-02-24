// DOM Manipulation Challenge


// I worked on this challenge with Colette Pitamba.


// Add your JavaScript calls to this page:

// Release 1:

realeaseOne = document.getElementById('release-0');
realeaseOne.className = 'done';

// Release 2:

releaseTwo = document.getElementById('release-1');
releaseTwo.style.display = 'none';


// Release 3:
var releaseThree = document.getElementsByTagName('h1')[0];
releaseThree.innerText = 'I completed release 2';

// Release 4:

var releaseFour = document.getElementById('release-3');
releaseFour.style.backgroundColor = '#955251';

// Release 5:

var releaseFive = document.getElementsByClassName('release-4');
for (var i=0; i < releaseFive.length; i++) {
 releaseFive[i].style.fontSize = '2em';
}

// for-in loop did not work


// Release6:

var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content);

/*
Reflection:

This exercise helped me solidify my understanding of how to use JavaScript to
manipulate the DOM. We also learned about the appendChild method and the
concept of templates, which I am still going to need to research further in order
to fully understand. Lastly, I learned that for-in loops (as opposed to for loops)
seem to be a bit dysfunctional with the DOM. Going to have to research that
more as well!

Some useful methods we used are .getElementById(), .getElementByClassName,
.getElementByTagName, .appendChild, .style.fontSize, .style.backgroundColor

*/