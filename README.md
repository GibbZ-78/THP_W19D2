# RAILSFULBLOG

## Trying to have fun mixing React() with Rails()... Coding a simple postings application

### :scroll: Content

This repository stores the resulting Rails part of a 1-day mini-project proposed on week #19 of the "Developer" curriculum, a 3-month web coding bootcamp offered by The Hacking Project (THP, [https://www.thehackingproject.org/](https://www.thehackingproject.org/)).  
This project consists in instantiating, configuring and coding a 2 parts posting / blogging application using Rails as the back-end API for all CRUD matters and React as the related front, then linking both in a seamless full-stack web page.

### :bulb: How to

_:warning: Remember this repo has to be coupled with its sibling "THP_W19D2_React"_

1. Clone the current :octocat: repository to your local :computer: using something as simple as `git clone <my_target_local_directory>` ("." for current folder)
2. Move to the just-brought-in directory by typing `cd <my_target_local_directory>`
3. First make sure to install all dependencies / gems via the `bundle install` command for the RoR gems
4. Create (`rails db:create`) the databases then do the sames with the related tables (`rails db:migrate`)
5. Flood the DB with fake yet relevant data via a simple `rails db:seed` command
6. Finally launch the Rails server via `rails s` (it should launch on port 3000 by default but you don't need to browse this)
7. Now turn to the _React side of life_

PS: if you feel like raw testing the API, you can use something like `curl -XPOST -i -H "Content-Type: application/json" -d '{ "user": { "email": "user_01@yopmail", "password": "THP2022" } }' http://localhost:3000/users/sign_in` which should return something like "200 - OK - You're now logged in" if successful. Enjoy!

### :computer: Development Environment

- Ubuntu 20.04 hosted by WSL 2 running on Windows 10 Famille (version 21H1 build 19043.1645)
- Ruby 2.7.4
- Rails 7.0.3
- CSS v3
- HTML v5
- Javascript ES6+ & JSX
- And a lot of other guests...

### :lock_with_ink_pen: Credits

&copy; 2022 - Jean-Baptiste VIDAL - [:octocat:](https://github.com/GibbZ-78) [<img src="https://www.linkedin.com/favicon.ico">](https://www.linkedin.com/in/jeanbaptistevidal/)

Enjoy, _wanderer_ :wink: !
