# TIM_website

We used:
- bootstrap as framework (http://getbootstrap.com/);
- a very very basic template provided by html.it - "Bootstrap, guida completa" from which we took inspiration for the flexslider (http://www.html.it/guide/img/bootstrap/demo/home.html);
- jQuery as js library.

//update of README.md on the 1st July.

We implemented fabiostim.altervista.org wrt the IDMs already produced in the design phase.

Our TIM website presents a simple and intuitive graphics, characterized by the repetition of the colors blue, white and red. We humbly and thoughtfully took care of the look and feel of the website also thanks to the use of graphics editor softwares, as Photoshop. 
The site is responsive and works pretty well also from mobile devices.

Files are organized in a structured way. In the root directory there are the .html files, in the folder called "assets" you can find the subdirectories "img" (with the images), "js" (with the .js files), "css" (with the .css files), "php" (with the .php files), "bootstrap" (with bootrstrap stuff). The folder "plugins" we added two .js files that allow the flexslider of the homepage to work.

We decided to implement the homepage index.html in a static way because it is quickier and cheaper to develop and cheaper to host, too.
On the contrary, all the other pages are dinamically generated. The reason of our choice is that dinamic pages are easier to update.

We implemented the website database with phpMyAdmin in local. At a later time, we got hosting space for free by Altervista and transferred the entire DB there through Filezilla.

In addition, we generated an Android mobile application (you can find the .apk file in the repository) with Cordova. We used the PhoneGap Build procedure. We appreciated a lot the PhoneGap emulator, that has been very useful for us in bubugging phase.
