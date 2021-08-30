# Howest Movie Shop (deployment)

This is a concept movie shop. Created as project for my .NET class.

The technology used is ASP.NET MVC.

PostgreSQL is used as database.

## How to run

### Preperation

First of all, [PostgreSQL](https://www.postgresql.org/download/) needs to be installed on your device together with [pgAdmin](https://www.pgadmin.org/download/) or another PostreSQL manager. [Python](https://www.python.org/downloads/) and [.NET](https://dotnet.microsoft.com/download) need to be installed as well.

Try to run `dotnet` in your terminal to see whether it is installed succesfully.

Then, after connecting pgAdmin to PostgreSQL, create a database called 'movies'.

### Getting necessary files

Clone this repo.

Run the two sql scripts located in the database folder of this repo in pgAdmin to populate the movies database.

Then, run the deploy.py script in the project folder. This will clone the repo's containing the app and library code. It will also try to run the application but will fail.

### Get it to run

Go to build/Howest-Movie-Shop-app which is newly created and run in the terminal `dotnet ef database update`. This will create necessary tables in the movie database to work woth ASP.

Now run `dotnet run`. The application should now be running on [localhost:5000](http://localhost:5000).

There is already an admin present in the application with username 'admin@howest.be' and password 'Test123!'.

Have fun!