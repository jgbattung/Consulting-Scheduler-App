# FirstClass - The consulting scheduler app

[View the app on heroku](https://consulting-scheduler.herokuapp.com/)

## Overview
This web app was created as a one-stop online destination for professionals and the public to find and meet with each other. It allows professionals to offer their services and display them on their personalized consultation links, while the puiblic can access these pages or search for specific professionals they with to consult with and book a consultation with them.   


## Features

### As a Consultant

* Consultants can create a Consultant Account where they can access the app's features
* During account registration, consultants will get a personalized consultation link that they can send to their Clients
* Consultants can create and edit consultation types for their services by providing the details and duration of the consultation, and whether if it is free or paid
* Consultants can view a list of all consultations booked by all Clients
* Consultants can manually approve and unapprove consultations booked by Clients
* Paid consultations are automatically approved once payment is verified by Stripe
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

### Create Consultant Account
![create_account](https://user-images.githubusercontent.com/100396329/195965878-e6facd75-2ab2-4873-b5c7-e1700ca50dbc.png)

### Consultant Dashboard
![consultant-dashboard](https://user-images.githubusercontent.com/100396329/195965936-c8e8e3d2-6c48-4cfa-8792-5684289a1659.jpg)
![consultant-dashboard-index](https://user-images.githubusercontent.com/100396329/195965941-dd43de7d-8e05-4de7-99c9-a39cba49d463.jpg)

### All Consultants Page
![consultants-index](https://user-images.githubusercontent.com/100396329/195965977-3fea47de-b02c-4800-a2a2-c08f8db05f82.jpg)

### Consultant Show Page
![consultant-show](https://user-images.githubusercontent.com/100396329/195965989-db96b496-33ce-4752-adcd-5bf32c46130d.jpg)

### Booking a new consultation
![consultation-new](https://user-images.githubusercontent.com/100396329/195966012-e17470e3-46a1-4a95-adce-f500c1d29e48.jpg)

### Consultation schedule confirmation
![booking-success](https://user-images.githubusercontent.com/100396329/195966036-37d1263a-4b48-4241-a361-a8972e8ae1ff.jpg)

### Consultation email notifications
![booking-email-consultant](https://user-images.githubusercontent.com/100396329/195966044-a221a11b-64ba-4241-aa6d-58dcd0e72561.jpg)
![booking-email-client](https://user-images.githubusercontent.com/100396329/195966045-a4281e26-fa59-4a88-a401-bdda93defb7c.jpg)

### Consultation details
![consultation-show](https://user-images.githubusercontent.com/100396329/195966050-18625f83-0fba-4ef2-a055-51bcc9286f92.jpg)
