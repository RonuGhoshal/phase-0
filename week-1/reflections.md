# 1.1 Think About Time Reflection

I glanced at all the time management and productivity techniques, but spent the most time studying meditation, mindfulness, and "flow." I have meditated occasionally in the past, and have researched and practiced mindfulness extensively - Eckhart Tolle's "The Power Of Now" addresses the idea of mindfulness, and after reading and absorbing that book a few years ago, I began to notice my life changing for the better. I've been noticing that a lot of ideas in the Engineering Empathy video remind me of this book - be aware of your thoughts and emotions, but don't allow them to control you.

"Flow" was a new concept to me - however, as a musician and writer, I was immediately drawn to it. The concept of "being in the zone" is something that I have often witnessed and experienced through improvisational jazz or freestyle rap, both as a listener and particpant. I hadn't thought about it in terms of programming but it makes sense that a combination of focused concentration and a loss of reflective self-conciousness could lead to great productivity - after all, coding can be a form of creation just like music or writing. "Time Boxing" (the idea of only working in a certain time window, and stopping to evaluate progress when time is up) was also new to me - I like the idea as it seems like this may reduce the tendency to overthink particular elements of a problem.

I've been trying to manage my free time lately by writing out a daily plan with every hour accounted for. I've found that doing this leads to more rewarding and productive days, and also better sleep at night. I plan to keep this up throughout Phase 0 as I'm balancing this with full-time work right now. I also plan to practice regular meditation as a way to stay grounded and keep my stress levels down.

## 1.2 The Command Line Reflection

In this exercise, we learned that a shell refers to a processor that executes commands. "Bash" refers to the default shell used in the GNU operating system. It can be used with Unix or several other operating systems.

The most challenging part of this material for me was trying not to get overwhelmed by the large amount of information. I tried to use the "embrace confusion" technique and felt that helped with getting a general understanding of the command line, even if I didn't fully understand every single thing being done.

I was able to successfully use the commands - most of them seemed straightforward although I had to look up a more detailed explanation of the difference between "less" and more. Based on what I've seen so far, it seems that some of the more important commands would include cd, pwd, mkdir, touch, rm, rmdir, cp, and mv.

-pwd

Print Working Directory - shows you the path of the directory you are working from.

-ls

Lists the contents of your working directory

-mv

Move - you can use this command to rename a file

-cd

Change Directory - Used to move to a different working directory. "cd" goes to the home directory, while "cd .." will go to the parent directory.

-../

This can be used to access any subfolder of the parent directory.

-touch

Make a new file

-mkdir

Make a new directory

-less

Prints the contents of a file to the screen. Enables you to move forward and backward throughout the file's contents.

-rmdir

Remove a directory (only works if directory is empty)

-rm

Remove a file (can also be used to remove a directory with contents)

-help

Help or "man" can be used to view the manual for any command - you can use this to view a detailed explanation of what a particular command does, and how to use it.

### Forking and Cloning Reflection

In order to create, fork, and clone a repository, here are the steps you would take:

To create a new repository, log into your account at www.github.com (Links to an external site.). Click the + sign in the upper right-hand corner (next to your avatar) and select "New repository." Then, you can name the repository (ideally with a short name that's easy to remember), add a description if you wish, and choose whether the repository will be public (anyone can see it) or private where only you (and anyone else you authorize) can see it.

To fork a repository, enter the URL of the repository you'd like to fork (in this example, we used https://github.com/DevBootcamp/p0-cli-exploration (Links to an external site.)). Then, click the "Fork" button, near the upper-right-hand corner of your screen. This will create a copy of the repository in your GitHub account (if you belong to multiple GitHub organizations, you'll be prompted to choose where you'd like the repository copied or "forked" to). Then, GitHub will take you to the newly forked repository.

To clone a repository - or make a local copy on your computer - go to the repository, and copy the URL text next to where it says "HTTPS."  Then, open up the Terminal and enter "pwd" to make sure that you are in the directory you'd like to work in.  Assuming that you're in the correct directory, you can then enter the following code:

git clone https://github.com/RonuGhoshal/p0-cli-exploration.git (Links to an external site.)

Note that if you were cloning a different repository, you'd enter a different URL - I'm just using the one from the example for the sake of simplicity here.

You'll see some code being executed on the screen, and then will be brought back to the command line. You can then enter in the "ls" command to view the contents of your working directory - they should now include the newly cloned repository.

Forking a repository is useful in the event that you'd like to be able to access and edit the contents of another user's public repository. It enables you to quickly make a copy in your own account, rather than having to create a new repository and then copy files over one at a time.

I didn't really have any struggles setting up git and GitHub - things seemed to run fairly smoothly. I was unsure at first on how to delete a repository from my account - however, a quick Google search solved that puzzle for me. By going into the "Settings" tab of a repository, and then scrolling down to the "Danger Zone," you can delete a repository. I liked that GitHub required you to confirm the name of the repository you wanted to delete - this probably saves developers a lot of trouble by preventing them from accidentally deleting the wrong folder.

