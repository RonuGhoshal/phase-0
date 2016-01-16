![Exercise 1](.Ex1.png)
[Exercise 2](./Ex2.png)
[Exercise 3](./Ex3.png)
![Exercise 4](./Ex4.jpg)
![Exercise 5](./Ex5.jpg)
![Exercise 6](./Ex6.jpg)
![Exercise 7](./Ex7.jpg)
![Exercise 8](./Ex8.jpg)
![Exercise 9](./Ex9.jpg)

Chrome's DevTools inspector is very useful for formatting or positioning elements. You can inspect each HTML element individually and see which CSS properties are being applied to it - then, you can turn these properties on or off (or otherwise change them) to see how the result would then change. I found this very effective while using trial and error to format and position the various DIVs.

The DOM may have some default settings for sizing certain elements - however, you can use a linked stylesheet to add CSS and overwrite these settings if you wish.

Here is a breakdown of the different positioning types:
  Absolute: An absolutely positioned element is positioned relative to the nearest positioned ancestor (or the initial container, if none exists).

  Fixed: A fixed positioned element will stay in the same place in the viewport, even when scrolling through the page.

  Static: A static positioned element will be displayed at its current position in the flow with no other positioning properties applied.

  Relative: A relatively positioned element will result in all other elements laid out as if the relatively positioned element were not positioned, leaving a gap where this element would have normally positioned. Then the relative position of the particular element will depends on any additional properties applied.

I felt like fixed positioning was very easy to use as it clearly keeps the element at one place in the viewport - the rest, I'm still struggling with a bit, as they may depend on other elements in the HTML.

Margins will move an element from any given side of the page - for example, a margin-left of 5px will move the element 5 px to the right of the left-hand side. Borders can be used to surround any or all sides of an element, and have a variety of settings that can be used (dashed, solid, etc...). Padding generates space around a particular element, and sets the size between the element content and border.

Overall, this challenge was great! I felt like it was really good practice, and would not have minded spending more time trying out new CSS techniques.