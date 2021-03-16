# Article CMS (FlaskWebProject)

This project is a Python web application built using Flask.

The user can log in and out and create/edit articles. An article consisting of title, author, body of text stored in an Azure SQL Server and an image stored in Azure Blob Storage.

Also implemented is an OAuth2 with "Sign in with Microsoft" button using the msal library and app logging.

## Project Instructions (For Student)

### You are expected to do the following to complete this project

Task | Done | Description
--- | --- | ---
1.| :white_check_mark: | Create a Resource Group in Azure.
2.| :white_check_mark: | Create an SQL Database in Azure
3.| :white_check_mark: | Create a Storage Container in Azure for images to be stored in a container.
4.| :white_check_mark: | Add functionality to the Sign In With Microsoft button.
5.| :white_check_mark: | Choose to use either a VM or App Service and provide an analysis comparing the two options.
6.| :white_check_mark: | Add logging for whether users successfully or unsuccessfully logged in.
7.| :white_check_mark: | Prove that the application is on Azure and working by providing screenshots.
8.| :white_check_mark: | Log into the Azure Portal, go to your Resource Group, and provide a screenshot including all of the resources that were created to complete this project. (see sample screenshot in "example_images" folder)
9.| :white_check_mark: | Take a screenshot of the Redirect URIs entered for your registered app, related to the MS Login button.
10.| | Take a screenshot of your logs (can be from the Log stream in Azure) showing logging from an attempt to sign in with an invalid login, as well as a valid login.

### Detailed instructions

2 SQL Database
   - Contains a user table, an article table, and data in each table
   (populated with the scripts provided in the SQL Scripts folder).
3 Storage Container
   - Provide a screenshot of the storage endpoint URL as detailed further below.
   - Provide a screenshot of the populated tables as detailed further below.
4 Sign in with Microsoft Button
   - This will require completing TODOs in views.py with the msal library, along with appropriate registration in Azure Active Directory.
5 Complete the analysis template in WRITEUP.md as well as detail your reasoning behind choosing one or the other. Once you have made your choice, go through with deployment.
6 Add Logging
   - This will require completing TODOs in __init__.py, as well as adding logging where desired in views.py.
7 Prove the application is working
   - Go to the URL of your deployed app, log in using the credentials in this README, click the Create button, and create an article with the following data:
   - Title: "Hello World!"
   - Author: "Jane Doe"
   - Body: "My name is Jane Doe and this is my first article!"
   - Upload an image of your choice. Must be either a .png or .jpg.

   After saving, click back on the article you created and provide a screenshot proving that it was created successfully. Please also make sure the URL is present in the screenshot.
