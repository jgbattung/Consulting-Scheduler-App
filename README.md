# Consulting Scheduler App

## Features

### As a Consultant

* Consultants can create a Consultant Account where they can access the app's features
* During account registration, consultants will get a personalized consultation link that they can send to their Clients
* Consultants can create and edit consultation types for their services by providing the details and duration of the consultation, and whether if it is free or paid
* Consultants can view a list of all consultations booked by all Clients
* Consultants can manually approve and unapprove consultations booked by Clients
* Paid consultations are autaomatically approved once payment is verified by Stripe
* Once a Client books a consultation, the Consultant will receive a notification email

### As a Client

* Clients do not need to create an account to access the app's features
* Clients can see a list of all available consultants and can also use the search function to look for a consultant using their name or specialization
* Clients can book a free or paid consultation via the Consultant's consultation link
* Once a Client books a consultation, they will receive a confirmation email with the details of the consultation

## Version
```
Ruby 3.1.2
Rails 7.0.4
```

## Setup
```
$ bundle install
$ rails db:setup
```

## Starting the app
```
$ rails s
```

## Running the test suite
```
$ rspec
```

## Screens
### Homepage
![homepage](https://user-images.githubusercontent.com/100396329/195965807-07c7d598-d0b7-483d-b80c-f0a6df2c5b85.jpg)

## Create Consultant Account
![create_account](https://user-images.githubusercontent.com/100396329/195965878-e6facd75-2ab2-4873-b5c7-e1700ca50dbc.png)

