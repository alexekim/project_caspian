
# Project Two: Full-Stack Application:

## _Caspian, an emergency management app, for any trip._
----------------

**Contributors:** Alex Kim, Maxwell Stern


**Sinatra and Ruby** are the core technologies used in this project. HTML and CSS will be implemented in styling the pages.

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
 - Models included: Account, Personal, Contact, Medical, and Location.
  - Relationships: Each account `has_one` of each of the other models, while each other model `belongs_to :account`.

- You may register and log in.
  - Authorization flow: You can only login after you register.
  - Passwords are hashed using BCrypt.

- **ActiveRecord** was used as the ORM with **PostgreSQL**.
- Clean code was used, and was thus happy code.
- [Available online here](caspian-app.herokuapp.com)
  - Side note: profile upload functionality is not live on the Heroku app.




The App
------------
Synopsis:
This can be classified as an Emergency Management app. It is meant to present important In-Case-of-Emergency (ICE) information. The app is meant to be used while camping, and contains the ability to hold information that is specific to the user's trip.


ERD
---------
![ERD](http://s10.postimg.org/mbtu3r7a1/caspian_erd.jpg)

Wireframe
--------
![Wireframe](http://s9.postimg.org/swxdhl7fj/wireframe.jpg)


Design Assets
--------
We built a simple UI that is very clean for quick reading. We  selected Bootstrap to style our pages, along with custom CSS. Additionally, we used [Unsplash](unsplash.com) as a resource for royalty-free stock imagery.

Technologies Used
----------
- **Sinatra and Ruby** are the core technologies used in this project. HTML and CSS were implemented in styling the pages.

- **Profile Picture Upload** Using file type input in HTML and 'onchange' event in JS. Simply put, this feature allows a user to upload an image for their profile pic. The image is then converted into *Base64*.

```html
<input class="form-control" type="file" onchange="readURL(this)"></label>
<input id="inputFileToLoad" type="hidden" name="image" value="">
```
```js
function readURL(input){
  if(input.files && input.files[0]){
    var reader = new FileReader();

    reader.onload = function(e){
      var fieldInput = document.getElementById('inputFileToLoad');
      fieldInput.value = reader.result;
    }
    reader.readAsDataURL(input.files[0])
  }
}
```
```sql
 image BYTEA
 ```


User Stories
-------------

High Priority: (required project scope)
- I need to be able fill in my personal emergency information.
- I need to see all the information that I input.
- I need to be to able to register and log in.

Medium Priority:
- I need to be able to change/update the information that I input.
- I want to be able to allow other users to view my information.
- I want to upload a picture of myself as a profile avatar.
- I want to be able to use this on different devices.

Low Priority
- I want the ability to create groups, and administrative hierarchies.
- I want to be able to change my profile picture.


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

### Unsolved Problems
- We were unable to implement an Update feature due to time constraints.
- We were unable to implement admins and groups.
- Our app stores very sensitive, personal information. Besides using BCrypt to protect passwords, our data needs stronger security.
- Registration is very basic. Additional measures to confirm passwords and identity are not only ideal, they are necessary.
- Regarding form fields, different types of inputs would be more appropriate for certain types of information, such as `select` and `option`.
- UI has lots of room for improvement.
























-------
