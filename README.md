# The Odin Project
# Project: Private Events
This repository is an assignment part of the Odin Project`s curriculum.
## The Assignment
<p float = 'left'>
  <img src="https://user-images.githubusercontent.com/19158296/124976303-73f7a580-e005-11eb-9369-d1933ecb7d66.jpg" alt="Private-Events" width="390" height="200">
</p>

# How to run this

## Locally
Clone the repository into your local machine:

```ruby
$ git clone https://github.com/Realmbird/Private-Events.git
```

Install the required gems:

```ruby
$ bundle install
```

Run migration:

```ruby
$ rails db:migrate
```

Run the server:

```ruby
$ rails server
```

Access the web application locally:

```ruby
localhost:3000
```

Different Routes:
<ol>
  <li>localhost:3000</li> 
  <li>localhost:3000/users/sign_up</li> 
  <li>localhost:3000/users/:id</li> 
  <li>localhost:3000/events/:id/edit</li> 
  <li>localhost:3000/events/new</li> 
  <li>localhost:3000/events/:id</li>
  <li>localhost:3000/invitations/:id/edit</li>
</ol>
Going to localhost:3000 will be enough as the website will have buttons that allow the user to fully utilize all the controller actions.
