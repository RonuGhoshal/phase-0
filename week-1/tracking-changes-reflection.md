How does tracking and adding changes make developers' lives easier?

Tracking and adding changes can make developers' lives easier by providing
them with a way to stay organized while updating their project. It also enables
them to easily go back to earlier versions of the project. Say your code was
working fairly well, then you made an edit, and it no longer worked. You could
go back to an earlier version of the code and review the change that was
made, to pinpoint what was causing the problem.

What is a commit?

A commit refers to a collection of changes or edits made to a file. Rather than
creating a new version of the file for every single change that is made, a
developer can make several changes, and then submit these changes as a
single "commit."

What are the best practices for commit messages?

Commit message should be in the imperative (For example, you would write:
"Change the reflections file" rather than using the past tense). Ideally they
should have a brief, capitalized summary (less than 50 characters). If
necessary, you can add more detailed explanatory text after skipping a line.
Make sure to skip a line between paragraphs.

What does the HEAD^ argument mean?

The HEAD^ argument is a variable that refers to the most recent commit.
"HEAD" would refer to the current commit, while HEAD~3 would be the one
prior to the most recent commit, HEAD~4 would be the one before that, etc...

What are the 3 stages of a git change and how do you move a file from one stage to the other?

The first stage of a git change is when a file is "not staged for commit," or
"untracked." To move this to the next state, you'll need to use the "git add"
command. You can use "git add <filename>" for a single file, or "git add . "
for all files in a directory.

The second stage is when a file is "staged for commit," meaning that it is
ready to be commited. To move this file to the third and final stage, you will
use the "git commit" command. (When commiting, it is a good idea to include
a commit message using "git commit -m."

Write a handy cheatsheet of the commands you need to commit your changes?

git init: create empty repository
git clone: clone an existing repository to your local directory
git checkout -b new-branch: create a new branch and move to it
git merge branch-name: merge branch-name into the current branch
git status: check status of current branch
git log: see your history of commits
git add: add untracked files to be staged for commit
git commit: commit changes!
git reset HEAD: remove file from "staged for commit" revert back to untracked

What is a pull request and how do you create and merge one?

A pull request is a way to merge code from an alternate branch into the
master branch. You will want to create a pull request after you have pushed
the alternate branch to GitHub. Go to your repository on GitHub - you should
see a button that says "Compare and Pull Requests." Click this button, and
you should be able to see the two branches being compared: "base"
(which will be the master) and "compare" (which will be the alternate branch).
After verifying that everything is correct, you will enter in a title and
description, explaining what you have changed. Then, click "Create Pull
Request." Next, you (or another authorized developer) can click the "merge"
button on the "Conversation" tab of your pull request. After confirming the
merge, it is a good idea to keep things clean by deleting your alternate
branch.

Why are pull requests preferred when working with teams?

Pull requests are preferred with teams, so that another developer can review
your code before merging it to the master branch. This is good practice to
make absolutely sure that things are as they should be, before overwriting
the master branch.