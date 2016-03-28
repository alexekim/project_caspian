
Project Two: Camping Emergency Info
===================
**Contributors: ** Alex Kim, Maxwell Stern


**Sinatra and Ruby** are the core technologies used in this project. HTML, CSS, and JavaScript will be implemented in styling the pages.

This project must be a **full-stack** application.

----------
**Project Requirements**
 The app must:

- Have at least 2 models (more if they make sense!) – one representing someone using your application, and one that represents the main functional idea for your app
- Include sign up/log in functionality, with encrypted passwords & an authorization flow
- Utilize an ORM to create a database table structure and interact with your relationally-stored data
- Include wireframes that you designed during the planning process
- Have semantically clean HTML and CSS
- Bonus: Be deployed online and accessible to the public


**How Requirements Were Met**
 - nothing yet...


The App
------------
Synopsis:
This can be classified as an Emergency Management app. It is meant to present important In-Case-of-Emergency (ICE) information. The app is meant to be used while camping, and contains the ability to hold information that is specific to the user's trip.


ERD
---------
![ERD](http://s8.postimg.org/ljxlti06d/Screen_Shot_2016_03_28_at_2_54_32_PM.png)

Wireframe
--------
![Wireframe](http://s9.postimg.org/swxdhl7fj/wireframe.jpg)


Design Assets
--------
We are looking to build a UI that is very clean for quick reading. We have selected Bootstrap to style our pages. Additionally, we may use unsplash.com as a resource for royalty-free stock imagery.


User Stories
-------------

High Priority: (required project scope)

- I need to be to able to register and log in.
- I need to be able fill in my personal emergency information.
- I need to see all the information that I input.
- I need to be able to change/update the information that I input.

Medium Priority:
- I want to upload a picture of myself as a profile avatar.
- I want to be able to allow other users to view my information.
- I want to be able to use this on different devices.

Low Priority
- I want to be able to change my background.


Pseudocode
-----------
1. Load all necessary gems in Gemfile
  - Don't forget BCrypt!
2. Bundle
3. config.ru: Require 'sinatra/base'
4. config.ru: Require all Controllers & Models
5. config.ru: Map set routes to controllers
6. Set up views
  - Code out form
  - Link to boostrap and scripts within layout.erb
  - Set up ERB locations & metadata where they apply
7. Set up public directory, insert media like background image(s)
  - add any assets for 404 error page
8. Set up Models
  - create classes where they apply, inherit methods through ActiveRecord::Base
9. Create database through preferred method (sqlite, migrations.sql, etc.)
10. Controllers: Application Controller: Establish db connection, set file paths, and not_found erb.
  - enable sessions
11. Controllers: Account Controller: set up CRUD routes
12. Controllers & Views: We may need a few different erb's containing forms to change out different tables
























-------
