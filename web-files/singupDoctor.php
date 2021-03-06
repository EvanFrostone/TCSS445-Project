<!DOCTYPE html>
<html lang = "en">
    <head>
        <meta charset = "UTF-8">
        <meta name ="viewport"content="width=device-width,initial-scale=1.0">
        <link rel = "stylesheet" href = "https://bootswatch.com/4/sandstone/bootstrap.min.css">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

        <title>Pierce County COVID-19 Testing</title> 

    </head>

    <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="index.php">Pierce County Covid Testing</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarColor02">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.php">Home
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="employee.php">Testing Locations</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="department.php">Department</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="project.php">Project</a>
                    </li>
                </ul>
                <form action = "../web-files/login.php"class="form-inline my-2 my-lg-0">
                    <button class="btn btn-primary my-2 my-sm-0" type="submit">Login</button>
                </form>
            </div>
        </nav>

        <div class = "container">
            <div class = "jumbotron">
                <h2 class = "display">Sign Up For Your Testing Account</h2>
                <form method = "GET" action = "post">
                    <div class = "form-group">
                        <label for "firstname">First Name</label>
                        <input type = "text" class = "form-control" id = "firstname" placeholder= "Enter your First Name...">
                    </div>

                    <div class = "form-group">
                        <label for "lastname">Last Name</label>
                        <input type = "text" class = "form-control" id = "lastname" placeholder = "Enter your Last Name...">
                    </div>

                    <div class = "form-group">
                        <label for "streetaddress">Street Address</label>
                        <input type "text" class = "form-control" id = "streetaddress" placeholder = "Enter your Address...">
                    </div>

                    <div class = "form-group">
                        <label type for "city">City</label>
                        <input type = "text" class = "form-control" id = "city" placeholder = "Enter your City...">
                    </div>

                    <div class = "form-group">
                        <label for "state">State</label>
                        <select class = "form-control" id = "state">
                            <option value="AL">Alabama</option>
                            <option value="AK">Alaska</option>
                            <option value="AZ">Arizona</option>
                            <option value="AR">Arkansas</option>
                            <option value="CA">California</option>
                            <option value="CO">Colorado</option>
                            <option value="CT">Connecticut</option>
                            <option value="DE">Delaware</option>
                            <option value="DC">District Of Columbia</option>
                            <option value="FL">Florida</option>
                            <option value="GA">Georgia</option>
                            <option value="HI">Hawaii</option>
                            <option value="ID">Idaho</option>
                            <option value="IL">Illinois</option>
                            <option value="IN">Indiana</option>
                            <option value="IA">Iowa</option>
                            <option value="KS">Kansas</option>
                            <option value="KY">Kentucky</option>
                            <option value="LA">Louisiana</option>
                            <option value="ME">Maine</option>
                            <option value="MD">Maryland</option>
                            <option value="MA">Massachusetts</option>
                            <option value="MI">Michigan</option>
                            <option value="MN">Minnesota</option>
                            <option value="MS">Mississippi</option>
                            <option value="MO">Missouri</option>
                            <option value="MT">Montana</option>
                            <option value="NE">Nebraska</option>
                            <option value="NV">Nevada</option>
                            <option value="NH">New Hampshire</option>
                            <option value="NJ">New Jersey</option>
                            <option value="NM">New Mexico</option>
                            <option value="NY">New York</option>
                            <option value="NC">North Carolina</option>
                            <option value="ND">North Dakota</option>
                            <option value="OH">Ohio</option>
                            <option value="OK">Oklahoma</option>
                            <option value="OR">Oregon</option>
                            <option value="PA">Pennsylvania</option>
                            <option value="RI">Rhode Island</option>
                            <option value="SC">South Carolina</option>
                            <option value="SD">South Dakota</option>
                            <option value="TN">Tennessee</option>
                            <option value="TX">Texas</option>
                            <option value="UT">Utah</option>
                            <option value="VT">Vermont</option>
                            <option value="VA">Virginia</option>
                            <option value="WA">Washington</option>
                            <option value="WV">West Virginia</option>
                            <option value="WI">Wisconsin</option>
                            <option value="WY">Wyoming</option>
                        </select>
                    </div>

                    <div class = "form-group">
                        <label for = "zip-code">Zip Code</label>
                        <input type = "text" class = "form-control" id = "zip-code" placeholder = "Enter your Zip Code">
                    </div>

                    <div class = "form-group">
                        <label for = "clinic-id">Clinic ID</label>
                        <input type = "text" class = "form-control" id = "clinic-id" placeholder = "Enter your Clinic ID">
                    </div>

                    <div class = "form-group">	
                        <label for "emailaddress">Email Address</label>
                        <input type = "email" class = "form-control" id = "emailaddress" placeholder="Enter your Email...">
                    </div>

                    <div class = "form-group">
                        <label for "phonenumber">Phone Number</label>
                        <input type = "phonenumber" class = "form-control" id ="phonenumber" placeholder= "Enter your Phone Number...">
                    </div>

                    <div class = "form-group">
                        <label for "password">Password</label>
                        <input type = "password" class = "form-control" id = "password" placeholder = "Enter your Password...">
                    </div>

                    <div class = "form-group">
                        <label for = "confirmpassword">Password</label>
                        <input type = "password" class = "form-control" id = "password-confirm" placeholder ="Please re-enter your Password...">
                    </div>

                    <div class = "form-group">
                        <label for = "sec-q-one">Security Question One:</label>
                        <select class = "form-control" id = "sec-q-one">
                            <option value = "mother-maiden">What is your mother's maiden name?</option>
                            <option value = "second-grade">What school did you go to for second grade?</option>
                            <option value = "first-car-color">What color was your first car?</option>
                        </select>
                    </div>

                    <div class = "form-group">
                        <label for = "sec-a-one">Security Answer One</label>
                        <input type = "text" class = "form-control" id = "sec-a-one" placeholder = "Enter Answer">
                    </div>

                    <div class = "form-group">
                        <label for = "sec-q-two">Security Question Two:</label>
                        <select class = "form-control" id = "sec-q-two">
                            <option value = "city-of-birth">What city were your born in?</option>
                            <option value = "make-first-car">What was the make of your first car? (What brand?)</option>
                            <option value = "father-birth-year">What year was your father born?</option>
                        </select>
                    </div>

                    <div class = "form-group">
                        <label for = "sec-a-two">Security Answer Two</label>
                        <input type = "text" class = "form-control" id = "sec-a-two" placeholder = "Enter Answer">
                    </div>
                    <div class = "form-group">
                        <button type = "submit" class = "btn btn-success">Login</button>
                        <p><a href = "../web-files/forogt-password.php">Forgot your password?</a></p>
                    </div>
            </div>
        </div>
        
    </body>
</html>