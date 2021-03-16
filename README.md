# Article CMS (FlaskWebProject)

This project is a Python web application built using Flask. Also implemented is an OAuth2 with "Sign in with Microsoft" using the msal library and app logging.

The user can log in and out and create/edit articles. An article consists of:
- title
- author
- body of text stored in an Azure SQL Server
- image stored in Azure Blob Storage

## Project Instructions (For Student)

### You are expected to do the following to complete this project

Task | Done | Description
--- | --- | ---
1. | :white_check_mark: | Create a Resource Group in Azure.
2. | :white_check_mark: | Create an SQL Database in Azure
   - Contains a user table, an article table, and data in each table
   (populated with the scripts provided in the SQL Scripts folder).
   - Provide a screenshot of the populated tables as detailed further below.
3. | :white_check_mark: | Create a Storage Container in Azure for images to be stored in a container.
   - Provide a screenshot of the storage endpoint URL as detailed further below.
4. | :white_check_mark: | Add functionality to the Sign In With Microsoft button.
   - This will require completing TODOs in views.py with the msal library, along with appropriate registration in Azure Active Directory.
5. | :white_check_mark: | Choose to use either a VM or App Service to deploy the FlaskWebProject to Azure. Complete the analysis template in WRITEUP.md (or include in the README) to compare the two options, as well as detail your reasoning behind choosing one or the other. Once you have made your choice, go through with deployment.
6. | :white_check_mark: | Add logging for whether users successfully or unsuccessfully logged in.
   - This will require completing TODOs in __init__.py, as well as adding logging where desired in views.py.
7. | :white_check_mark: | To prove that the application is on Azure and working, go to the URL of your deployed app, log in using the credentials in this README, click the Create button, and create an article with the following data:

   - Title: "Hello World!"
   - Author: "Jane Doe"
   - Body: "My name is Jane Doe and this is my first article!"
   - Upload an image of your choice. Must be either a .png or .jpg.

   After saving, click back on the article you created and provide a screenshot proving that it was created successfully. Please also make sure the URL is present in the screenshot.
8. | :white_check_mark: | Log into the Azure Portal, go to your Resource Group, and provide a screenshot including all of the resources that were created to complete this project. (see sample screenshot in "example_images" folder)
9. | :white_check_mark: | Take a screenshot of the Redirect URIs entered for your registered app, related to the MS Login button.
10. Take a screenshot of your logs (can be from the Log stream in Azure) showing logging from an attempt to sign in with an invalid login, as well as a valid login.
