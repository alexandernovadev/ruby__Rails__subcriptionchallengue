# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version


## Considerations:

[*] The email and user preferences must be stored in Database.
[*] The same email cannot be registered twice, an error message will be displayed to the user indicating that the email already exists.
[*] Make a simple validation of the user's input to guarantee that what they have entered complies with the valid format of an email.
[*] The user may select one or more preferences, but they must select at least one of them.
[] Once the user has been registered successfully, an email will be sent confirming their subscription.

## Observations:

[*] Develop it using Ruby on Rails.
[*] You can use the Database with which you feel more comfortable, but for the sake of simplicity we recommend SQLite, which comes configured by default in Rails.
[*] We are not evaluating the UI design, you can use a CSS framework or make a simple design from scratch, whichever you prefer.
[OO] We appreciate readable code that follows good software development practices.
[OO] Testing is welcome.
[*] It is not necessary to deploy the project to "production" anywhere, we only want to see the code.
[] When you have it ready, upload the code to a Github repo and give us access to review it.
[] Let us know how to run your code.

## Extra Ball 1 (Optional):

Even if the email has a valid format, that does not mean that it is an existing email. It could be that the domain does not exist, or it is not configured to receive mail. To prevent submitting this type of emails, we will only accept those that obtain a *score* greater than 0.7 when looking up in this API:

https://www.abstractapi.com/email[]verification[]validation[]api (You need to create a free account to get an *API key*)

## Extra Ball 2 (Optional):

The landing page will be used in several countries, therefore it should be prepared to adapt it to different languages. This is what we know in software development as internationalization (i18n).

It is not necessary to translate the texts to other languages, but the project must be prepared to be easily localized without needing to make changes to the code (through a file containing the translations, for example).