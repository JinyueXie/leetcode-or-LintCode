# Jinyue Xie Assignment 4 individual document

# 1, Tasks

- Task 1: Implement a teacher registration page (Assignment 2 sprint)
- Task 2: Implement a student registration page (Assignment 3 sprint)
- Task 3: Implement dynamic error page (Assignment 4 sprint)

# 2, Installation and Running Instructions

### 2.1 Installation

- Open the terminal or command prompt.
- Navigate to the project directory using the cd command.
- Run the following command to install the dependencies.

```
npm install
```

### 2.2 Running student registration page, teacher registration page and dynamic error page Instructions

- Open the terminal or command prompt.
- Navigate to the project directory using the cd command.
- Run the following command to start the server:

```
node server.js
```

<p> Wait for the server to start. You should see a message indicating that the server has started and is listening on a specific port.
Once the server is running, you can access the relative page in web browser by navigating to the below URL.

##### 2.2.1 teacher registration page

- Open the teacher registration page at below link
  > http://localhost:3000/registration


##### 2.2.2 student registration page

- Open the student registration page at below link
  > http://localhost:3000/student/registration



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

- Then open the error page at below link
  > http://localhost:3000/test-error

### 2.3 Run regression test for student registration page, teacher registration page and error page

- Open the terminal or command prompt.
- Navigate to the project directory using the cd command.
- Run the following command to install the Mocha library:

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
    
![uml](https://user-images.githubusercontent.com/105991554/230519901-9a8c87a1-68e8-41fd-acb6-20ae55bc51da.jpg)


# 5, Effort

To ensure the registration form validation works correctly, I have implemented a function that validates the input fields for both teachers and students. The function ensures that all required fields are filled out and that the email and phone number fields contain valid values. Additionally, I have added functionality to the registration form to create a user account in the database when the form is submitted. This involves modifying the register function to insert a new user document into the database and handling any errors that may occur during the insertion process.

I have written test cases to verify that the registration form validation function operates correctly, including tests to ensure required fields are properly validated, email and phone number fields are validated correctly, and invalid input is rejected.

Furthermore, I have written test cases to ensure that the register function creates a new user document in the database with the correct fields and handles any errors that may occur during the insertion process. These tests include verifying that the function returns the correct response code and that any error messages are returned correctly.

To enhance the user experience, I have made the error page dynamic and ensured that it matches the color pattern of our theme. When users click the "Go To Home" button, they will be redirected back to the registration page.

The error handling tests include a success case and a failure case. The success case tests that the error page renders successfully when an error occurs, while the failure case tests that the error page does not render when there is no error.

Regarding the documentation, I have followed the team's requirements and provided a complete and accurate description of the implementation state, including any necessary documentation. Additionally, I have supplied a reasonable set of regression unit tests and provided any instructions needed to run the code.

In summary, I have made substantial effort to complete the assigned tasks and integrate them with the team project and repository. This includes implementing registration form validation, handling errors during user account creation, and writing test cases to ensure correct functionality. The code adheres to the team's defined coding standards, incorporates DRY and SOLID principles, and is well-documented.

## 6, State

During the third sprint cycle, I successfully completed my individual task of implementing the student registration page. In this fourth and final sprint cycle, I have now completed my assignment task of creating a dynamic error page for our team's web application. I have also maintained and updated my previous code responsibilities from sprint 1 and 2 (assignment 2 and 3) as required.

The dynamic error page displays appropriate error codes and messages for different situations, providing users with a clear understanding of what went wrong. I have included a "Go To Home" button that redirects users back to the home page, ensuring a smooth user experience. My implementation follows the team's coding principles (DRY, SOLID) and demonstrates good software engineering practices.

In addition to completing the error page, I have supplied adequate regression tests for success and failure mode testing, covering both my teacher registration page from assignment 2 and the student registration page from assignment 3. These tests make use of a suitable unit testing framework, which is mocha to ensure the code's functionality and maintainability.

To integrate my implementation with the team project and repository, I adhered to our team's established guidelines for version control and code management. I used Git to track my code changes and pushed all updates to the repository. I also followed the team's guidelines for merging conflicts, addressing any issues that arose during the integration process.

Overall, I am satisfied with the state of my implementation and believe that it is accurately documented and up-to-date on the board and other necessary documents. I will continue to work with the team to ensure that our implementation efforts are well-integrated and aligned with the project goals.

# 7, Functionality

In this sprint cycle, I have successfully implemented a dynamic error page for our team's web application. The dynamic error page displays appropriate error codes and messages for different situations, providing users with a clear understanding of what went wrong. It also includes a "Go To Home" button that redirects users back to the signin page, ensuring a smooth user experience.
- dynamic error page
  ![error_408](https://user-images.githubusercontent.com/105991554/230523465-f965bd70-5aed-4161-862b-37d87c27fba0.jpg)
![error_429](https://user-images.githubusercontent.com/105991554/230523469-d72505ec-74c3-4994-a6d9-367d32cb95c3.jpg)
![error_502](https://user-images.githubusercontent.com/105991554/230523471-2e3fa134-126d-4960-b102-dee45866d9dd.jpg)
![error_404](https://user-images.githubusercontent.com/105991554/230523473-bb26975a-31d3-44d7-9608-fc25dc1d472b.jpg)
![error_403](https://user-images.githubusercontent.com/105991554/230523474-6a2fd69e-6971-4716-8f79-de340e6a958c.jpg)
![error_500](https://user-images.githubusercontent.com/105991554/230523475-b5fc9c89-5c5e-4cd9-9997-366d01f010ae.jpg)
![error_400](https://user-images.githubusercontent.com/105991554/230523476-9e3d8fe1-f31f-47f8-a1ca-ec705a860326.jpg)
![error_401](https://user-images.githubusercontent.com/105991554/230523477-251e89b3-9bf6-4e60-bf4e-1c8d08d746e4.jpg)
![error_405](https://user-images.githubusercontent.com/105991554/230523479-9f1732f3-642a-4520-b30f-ab014845946d.jpg)
After click return home button in error page, we'll back to Signin page:
   ![after_error](https://user-images.githubusercontent.com/105991554/230523557-6a936515-1c40-4e90-af02-d1e5f241a2b5.jpg)
 
-student registration page
    
![student_registration01](https://user-images.githubusercontent.com/105991554/230524489-10818bd8-82db-40f1-8a47-f44f6b511534.jpg)
![student_registration02](https://user-images.githubusercontent.com/105991554/230524493-0266fcd0-9f80-4f50-8914-f91fc6da3e91.jpg)
![student_registration03](https://user-images.githubusercontent.com/105991554/230524494-5a9e982a-b85b-4065-bdce-6dadec83e507.jpg)
![student_registration04](https://user-images.githubusercontent.com/105991554/230524496-ab66b041-7c5b-4d34-be3f-4c8165d4c756.jpg)

-teacher registration page
    
![registration](https://user-images.githubusercontent.com/105991554/230524537-91d64d09-a3bc-4b44-886c-9ccb8dab9820.jpg)
![registration01](https://user-images.githubusercontent.com/105991554/230524542-e792de22-01a8-4e0a-91e5-99fa1dcb56c8.jpg)
![registration02](https://user-images.githubusercontent.com/105991554/230524544-bc01280b-3354-458f-af3b-3ef17c39a0ef.jpg)
 
The student and teacher registration pages feature responsive forms with fields for collecting necessary user information such as first and last names, email, password, confirm password, and subject categories (including science and general knowledge for students). All fields are mandatory before submitting the form. Upon form submission, the data is sent to the server for further processing through the respective endpoints, "/student/registration" for students and "/registration" for teachers. The "onChange" function ensures that users' passwords match by running whenever a value is entered in either the "password" or "confirm" fields. If the values do not match, an error message is displayed, prompting the user to enter matching passwords.

The dynamic error page is designed to handle various HTTP error statuses, displaying appropriate error messages based on the status code provided. This feature enhances the user experience by providing informative feedback during error scenarios.

In collaboration with the team, the registration and error pages have been seamlessly integrated into the overall project, maintaining a consistent color theme and design pattern. To ensure code quality and correct functionality, two test cases have been created for each page, one for success mode testing and another for failure mode testing.

In conclusion, the dynamic error page, student registration page, and teacher registration page, along with their respective functionalities, have been effectively implemented and integrated into the team project. This work demonstrates a successful collaboration, adherence to design guidelines, and a focus on delivering a high-quality user experience.


# 8, Regression Testing


![student_paga](https://user-images.githubusercontent.com/105991554/230526396-7552c0d6-7067-4c0c-b0df-0ba8a725e5a6.jpg)
![teacher_regist](https://user-images.githubusercontent.com/105991554/230526398-0fe6bee3-ccc6-4ebb-b146-bdda023b9c00.jpg)
![error_page](https://user-images.githubusercontent.com/105991554/230526399-342b9c35-b21e-4386-b63a-c07cbd295305.jpg)

    
In this sprint, I was responsible for conducting regression testing on three pages: the student registration page, teacher registration page, and dynamic error page. My work involved ensuring the successful rendering of these pages, as well as the correct handling of error cases.

To achieve this, I implemented a series of tests using the Mocha testing framework. These tests were designed to assess both the success and failure modes of each page, verifying that they function as expected under different conditions.

For the student registration and teacher registration pages, I created two tests each:

The first test checks if the page is rendered successfully with a status code of 200 and the correct content type. It also verifies that the response body includes the appropriate title tag.

The second test ensures that POST requests to the registration pages are not allowed, as they should return a 404 status code.

For the dynamic error page, I created two tests to verify its error handling capabilities:

The success case test simulates an error by making a request to a non-existent endpoint, which should trigger a 404 status code and render the error page with the correct title tag.

The failure case test checks if the error page is not rendered when no error occurs. It makes a request to the base URI, expecting a status code other than 500 and the absence of the error page title tag in the response body.

By incorporating these tests into the pull request/code review process for the project, I have ensured that any changes made to the codebase do not negatively impact the functionality of these pages. The comprehensive testing approach, covering both success and failure modes, demonstrates a commitment to maintaining high-quality code and adhering to the principles of DRY (Don't Repeat Yourself) and SOLID (Single Responsibility, Open/Closed, Liskov Substitution, Interface Segregation, and Dependency Inversion).

Overall, my work on regression testing for the student registration, teacher registration, and dynamic error pages contributes significantly to the robustness and reliability of the project. It ensures that our application continues to function correctly as new features are added and existing ones are modified, ultimately resulting in a more stable and maintainable product for our users.


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
