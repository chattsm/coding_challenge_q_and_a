# Brief

This challenge is to build a website where a user can ask questions and others be able to reply with answers.

We've deliberately kept the scope as light as possible to give freedom in the solution and your priorities, however, there are a few guidelines :-

- You can use any language, framework or dependency you like.
- Your solution should be browser-accessible.
- You should ideally not spend more than 3-4 hours on this - we're not looking for something that's gold plated or feature-rich.

# Approach

Given the brief and constraints, I decided to maximise the timebox by going for a basic Rails CRUD solution, and rely heavily on libraries (like Devise) to provide off-the-shelf functionality.

The UI is extremely basic because I decided to go deeper on functionality rather than spending a lot of time on the UI.

Everything was test-driven initially via feature specs, and then dropping down to unit tests, mostly at the model layer.

# Setup

## Booting locally

After cloning the repo, run the following to start the application :-

```
$ bundle install
$ bin/rails db:setup
$ bin/rails server

# => Booting Puma
# => Rails 7.0.4 application starting in development
# => Run `bin/rails server --help` for more startup options
# ...
```
The application is now available via a web browser on `http://127.0.0.1:3000`.

## Running tests

```
$ bin/rspec

# Running via Spring preloader in process 55285
# ....................................

# Finished in 1.4 seconds (files took 0.36959 seconds to load)
# 36 examples, 0 failures
```