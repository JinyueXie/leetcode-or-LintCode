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
[Insert UML diagram here]

# 5, Effort
(15%) effort for two functional code tasks
(5%) effort for regression unit tests
Current State
(10%) functional code tasks integrated
(5%) regression unit tests integrated

# 6, Functionality
[Describe the functionality of both tasks]

# 7, Regression Testing
[Describe the regression testing done for both tasks]

# 8, JSdoc Comments
[Provide a brief description of the JSdoc comments used in the code]

# 9, Collaboration and Documentation
The state of the task implementation: [completed / in progress]
Properly documented state of the task implementation
Additional external documentation (UML diagrams) included
Marking Scheme
(20%) Appropriate effort made to complete the task, indicated in the board/issues/documentation
(15%) effort for two functional code tasks
(5%) effort for regression unit tests
(20%) State of the implementation completely documented and accurate on the board and any necessary documents
(15%) Current state of the implementation effort integrated with the team project and repository
(10%) functional code tasks integrated
(5%) regression unit tests integrated
(35%) Implementation is complete and correct
(15%) functionality for two tasks is documented and working complete
(5%) the code is integrated into the project
(5%) regression testing supplies adequate success and failure mode testing
(5%) coding principles DRY, SOLID applied as appropriate
(5%) design of the code is clear and comprehensible from JSdoc comments
[Add any additional notes or personal observations on the status of the tasks]

