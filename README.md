# CodeConqr

There are so many amazing resources available online but it's difficult to keep track of them all. CodeConqr is here to solve that!

Track online courses, resources and coding languages with CodeConqr.


Ruby version: 2.7.1

Rails version: 5.2.4.3

Bootstrap

Trix version: 0.10.1

Bcrypt: 3.1.13

PostgreSQL

#

CodeConqr was built to resolve the need for a interactive programming knowledgebase.

CodeConqr was built utilising a full CRUD system for Languages, Resources, Users and features:
 * Null checks and other edge cases
 * Admin users
 * Dynamic redirects
 * Trix interactive text editor
 * Varied Active Record Associations (HABTM, MTM etc)

![alt text](https://github.com/AlexMaunder/Project-1/blob/master/app/assets/images/proj1.png)


# To Do
1. Drag and drop to re-order Languages within a repo:
https://www.kindleman.com.au/blog/drag-and-drop-with-rails-and-html5/ (requires https://github.com/swanandp/acts_as_list to your gemfile to control the db IDs)
OR with JS: https://github.com/bevacqua/dragula | https://bevacqua.github.io/dragula/

2. CRUD for Books

3. Dependant destroy (Rails method to delete all dependants when the parent is destroyed – destroy all resources when Repo is destroyed).

4. Dark mode

Deployed using Heroku
