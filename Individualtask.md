# Jinyue Xie Assignment 3 individual document
# 1, Tasks
* Task 1: Implement a student registration page (Assignment 2 sprint, feature/bteam-87)
* Task 2: Implement error pages (Assignment 3 sprint, feature/bteam-21)

# 2, Installation and Running Instructions
### 2.1 Installation
* Open the terminal or command prompt.
* Navigate to the project directory using the cd command.
* Run the following command to install the dependencies.
```
npm install
```

### 2.2 Running student registration page, teacher registration page and error page Instructions
* Open the terminal or command prompt.
* Navigate to the project directory using the cd command.
* Run the following command to start the server:
```
node server.js
```
<p> Wait for the server to start. You should see a message indicating that the server has started and is listening on a specific port.
Once the server is running, you can access the relative page in web browser by navigating to the below URL.

##### 2.2.1 student registration page
* Open the student registration page at below link
> http://localhost:3000/student/registration

##### 2.2.2 teacher registration page
* Open the teacher registration page at below link
> http://localhost:3000/registration

##### 2.2.3 error page 
Simulate a test error by adding the following code to server.js 
```
// Handles a test error.
// @param {Object} req - The request object
// @param {Object} res - The response object
// @param {Function} next - The next middleware function
// @returns {void}
app.get('/test-error', (req, res, next) => {
    const error = new Error('This is a test error');
    error.status = 500;
    next(error);
});
```

* Then open the error page at below link
> http://localhost:3000/test-error

### 2.3 Run regression test for student registration page, teacher registration page and error page
* Open the terminal or command prompt.
* Navigate to the project directory using the cd command.
* Run the following command to install the Mocha library:
```
npm install mocha
```
Then run 
```
npm run test
```
in the terminal.

# 3, Coding Principles
### 3.1 De-coupling: 
The code is well-structured and modular, with different functions and middleware handling specific tasks. This makes the code more flexible and maintainable in the long run.

### 3.2 DRY (Don't Repeat Yourself): 
The code avoids duplication of logic, with reusable functions and middleware used across different parts of the codebase. For example, the error handling middleware is defined once and used for all errors, instead of repeating the same code for each error.

### 3.3 SOLID: 
The code seems to follow the Single Responsibility Principle (SRP) and Open/Closed Principle (OCP), with each function and middleware handling a specific task and being open for extension but closed for modification. The code also implements error handling in a separate middleware function, following the Separation of Concerns (SoC) principle.

### 3.4 regression unit tests for error handling
The tests cover both success and failure cases, and the test cases are named descriptively, making them easy to understand.

### 3.5 JSDoc comments
The code is well-documented using JSDoc comments, which provide clear and concise explanations of the functions, middleware, and test cases. This makes the code more comprehensible for developers who are not familiar with the codebase.


# 4, UML Diagram
![UML](https://user-images.githubusercontent.com/105991554/228698876-93961e17-d3a7-452a-8bd1-c5b96b4fac47.jpg)

# 5, Effort
Implement a function that validates the input fields of the registration form for both teachers and students. This function should ensure that all required fields are filled out and that the email and phone number fields contain valid values.

Add functionality to the registration form to create a user account in the database when the form is submitted. This requires modifying the register function to insert a new user document into the database and handle any errors that may occur during the insertion process. 

Write test cases to ensure that the registration form validation function works correctly. This includes testing that required fields are properly validated, email and phone number fields are validated correctly, and invalid input is rejected.

Write test cases to ensure that the register function creates a new user document in the database with the correct fields and handles any errors that may occur during the insertion process. This includes testing that the function returns the correct response code and that any error messages are returned correctly.
    
## 6, State
I have completed my assigned individual task of implementing the student registration page and error page for the team's web application, I also completed the regression testing supplies adequate success and failure mode testing for my assignment 2's teacher registration page and assignment3's student registration page and error page.
The student registration page, error page and mocha test is fully implemented and functional.

To integrate my implementation effort with the team project and repository, I followed the team's established guidelines for version control and code management. 
I used Git to keep track of my code changes and made sure to push all changes to the repository. 
I also followed the guidelines for merging conflicts, resolving any issues that arose during the integration process.

Overall, I am satisfied with the state of my implementation and believe that it is accurately documented and up-to-date on the board and other necessary documents. 
I will continue to work with the team to ensure that our implementation efforts are well-integrated and aligned with the project goals.

# 7, Functionality
This HTML code creates a student registration form with fields for the user's first and last name, email, password, confirm password, and subjects category(include science and general knowledge), and a error page. All fields are required to be filled out before submitting the form. Upon submitting the form, the information is sent to a server for further processing, and the URL that the form is submitted to is "/student/registration". The function "onChange" ensures that the user's passwords match. It runs when the user enters a value in either the "password" or "confirm" fields, checking if the values in both fields match. If they don't, an error message will be displayed, prompting the user to enter matching passwords.  Error page and student registration Page Design and Collaboration with Teammates on Github. and I create two test case for my each page, one for success mode testing, another for failure mode testing.
 
    
* error page
![Screenshot 2023-03-29 122233](https://user-images.githubusercontent.com/105991554/228699813-56e2842a-9452-4f4e-9590-7481dae4c6d3.jpg)

* student registration page
![registration_student01](https://user-images.githubusercontent.com/105991554/228699845-172cc27a-ff00-486b-acb9-7094beaf4b37.jpg)

![registration_student02](https://user-images.githubusercontent.com/105991554/228699870-b6be8412-2665-4d96-b8f3-8793e1bf19d2.jpg)

![registration_student03](https://user-images.githubusercontent.com/105991554/228699879-24b3de33-ccbf-4161-bbb7-e7c1a9fdb544.jpg)

![registration_student](https://user-images.githubusercontent.com/105991554/228699766-d6c39d4a-6583-4948-91ce-14a218b6543c.jpg)

# 8, Regression Testing
* student registration page, teach registration page, error page, those page all include success and failure mode testing.

![student_registration](https://user-images.githubusercontent.com/105991554/228700470-fa5d927d-f78c-46dd-bdc0-e17b5cf40c18.jpg)

![error_test](https://user-images.githubusercontent.com/105991554/228700486-335c6ca8-0969-4ae8-8d10-0392ddfed456.jpg)

![teacher_test](https://user-images.githubusercontent.com/105991554/228700501-6add1db4-b6d6-48ba-bcc5-84b10d44f571.jpg)

# 9, JSdoc Comments
![jsdoc for error code](https://user-images.githubusercontent.com/105991554/228699580-a202641a-3e7f-4df0-b365-322e752df6ce.jpg)

```
/**
 * Test suite for error handling.
 */
describe('Error handling', () => {
  /**
   * Test case for when an error occurs.
   * @function
   * @name errorOccurs
   */
  // Test the success case
  it('should render the error page successfully when an error occurs', (done) => {
    request(`${baseUri}/test-error`, (err, res, body) => {
      expect(res.statusCode).to.equal(404);
      expect(res.headers['content-type']).to.include('text/html');
      expect(body).to.include('<title>Error</title>');
      done();
    });
  });

   /**
   * Test case for when there is no error.
   * @function
   * @name noError
   */
  // Test the failure case
  it('should not render the error page when there is no error', (done) => {
    request(`${baseUri}/`, (err, res, body) => {
      expect(res.statusCode).to.not.equal(500);
      expect(body).to.not.include('<title>Error</title>');
      done();
    });
  });
});
```
```
/**

 Error handling middleware for all other errors.
 @param {Error} err - The error object
 @param {Object} req - The request object
 @param {Object} res - The response object
 @param {Function} next - The next middleware function
 @returns {void}
 */
// Error handling middleware for all other errors
app.use((err, req, res, next) => {
    const errorCode = err.status || 500;
    const errorMessage = err.message || 'Internal Server Error';
    res.status(errorCode);
    res.render('admin/error', { errorCode, errorMessage });
});

/**
 * Starts the server and connects to the database.
 *
 * @param {number} config.PORT - The port to listen on.
 * @returns {undefined}
 */

app.listen(config.PORT, async () => {
    console.log('Server is running on port 3000')
    await mongoose.connect(config.CONNECTION_STRING, { useNewUrlParser:true })
    console.log("Database Connected")
})
```
```
    /**
 * Test suite for error handling.
 */
describe('Error handling', () => {
  /**
   * Test case for when an error occurs.
   * @function
   * @name errorOccurs
   */
  // Test the success case
  it('should render the error page successfully when an error occurs', (done) => {
    request(`${baseUri}/test-error`, (err, res, body) => {
      expect(res.statusCode).to.equal(404);
      expect(res.headers['content-type']).to.include('text/html');
      expect(body).to.include('<title>Error</title>');
      done();
    });
  });

   /**
   * Test case for when there is no error.
   * @function
   * @name noError
   */
  // Test the failure case
  it('should not render the error page when there is no error', (done) => {
    request(`${baseUri}/`, (err, res, body) => {
      expect(res.statusCode).to.not.equal(500);
      expect(body).to.not.include('<title>Error</title>');
      done();
    });
  });
});
```
    

# 10, Collaboration and Documentation
The team effectively collaborated on Github to merge code and resolve conflicts. 
We used pull requests, code reviews, and merge conflicts to ensure high-quality code. 
We documented the state of the implementation accurately on the board and any necessary documents. 
Appropriate efforts were made to complete the task, which was indicated in the board/issues/documentation.
    
# 11, Learning Achievements
The project presented learning opportunities, which have honed my skills as a developer. 
I learned the importance of writing modular and easy-to-maintain code by using the DRY principle and de-coupling. 
I also learned how to use Github effectively to collaborate with my teammates. 
Using EJS (Embedded JavaScript), I created dynamic web pages that are easy to maintain and update.
I learned about Scrum meetings and the different roles involved, including Quality Assurance, Scrum Master, Technical Leader, Performance Reviewer, and Note Taker.
By taking on these roles in different meetings, I was able to contribute to our project and ensure that our team is working effectively. 
Finally, I learned about the importance of understanding the user's perspective when designing and developing a web application. 
Using user stories, I ensured that our project meets the needs and expectations of our users.

# 12, Implementation
The implementation is complete and correct. The functionality is well-documented and integrated into the team project and repository. 
The code is integrated into the project or some testing mechanism so it can be evaluated as a run-time component. 
The coding principles de-coupling and DRY are applied as appropriate. The code's design is clear and comprehensible from JSdoc comments.
    
# 13 Conclusion
In conclusion, working on this project has been a valuable learning experience for me. I have gained a deeper understanding of software development and collaboration, and I have honed my skills as a developer. I am proud of the effort I have put into this project, and I am confident that our team will continue to produce high-quality work in the future.
