# Architecture Design
This document outlines the architecture design for a Node.js quiz-taking web application.

## Folder Structure Overview
The folder structure of our Node.js application is organized as follows:

* Configuration: This folder contains the config.js file for application configuration settings, such as environment variables, database connection settings, and other settings used throughout the application.

Controllers: This folder contains the application's controllers, including auth.controller.js and quiz.controller.js. Controllers handle user input and serve appropriate responses by acting as intermediaries between the application's model and view.

Coverage: This folder stores code coverage reports generated during testing.

Doc: This folder contains the documentation related to the application. It is organized into subfolders for different assignments, each containing individual and team documents.

Images: This folder contains images used throughout the application, such as those in documentation.

Middleware: This folder contains middleware functions, such as auth.js, used in the application for tasks like user authentication, request validation, and error handling.

Models: This folder contains files related to the application's data models, including question.js, quiz.js, score.js, student.js, and teacher.js. Models define the structure of the data used in the application and provide methods for querying and manipulating data.

Routes: This folder contains files for the application's routes, such as auth.routes.js and quiz.routes.js. Routes define the URL endpoints for the application and map them to specific controller actions.

Test: This folder contains files for testing the application using the Mocha testing framework. It includes auth.test.js, checkQuiz.test.js, store.test.mjs, and view.test.js.

View: This folder contains files for the application's views, organized into subfolders for admin, error, partials, src, and student. Views are responsible for rendering data and generating HTML output to be sent to the client.

Server.js: This file is the entry point for the application. It contains the code for setting up the application, defining routes, and starting the server.

tailwind.config.js: This file contains configuration settings for the Tailwind CSS framework, which is used to style the application.

Modules
The application is divided into two main modules: views and routes. The views module is further divided into student, admin, and partials. This separation allows for decoupled modules, where each module is responsible for its specific functionality. The partials module contains common components such as the navbar and sidebar. The same approach has been followed for the routes module.

Tools Used
ExpressJS: A Node.js web application framework used for building web applications and APIs.
MongoDB: A document-based NoSQL database utilized for storing and managing data.
Mongoose: An Object Data Modeling (ODM) library for MongoDB and Node.js that simplifies interactions with the database.
bcrypt: A library for hashing and salting passwords to ensure their security.
JSON Web Tokens (JWT): A compact, URL-safe means of representing claims to be transferred between two parties for authentication purposes.
Cookie Parser: A popular middleware function in Node.js used for parsing and handling HTTP cookies.
Mocha: A testing framework for Node.js that provides a flexible and powerful suite of features for writing and executing tests.
This architecture design offers a clear and organized structure for the Node.js web application. Separating concerns and providing clear boundaries between different components of the application makes it easier to maintain and scale the application as it grows.
