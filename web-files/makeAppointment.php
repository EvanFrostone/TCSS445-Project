<?php require_once('config.php'); ?>
<!DOCTYPE html>
<html lang = "en">
    <head>
        <meta charset = "UTF-8">
        <meta name ="viewport"content="width=device-width,initial-scale=1.0">
        <link rel = "stylesheet" href = "https://bootswatch.com/4/sandstone/bootstrap.min.css">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

        <title>GoToAppointment</title> 

    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                    <a class="navbar-brand" href="index.php">Pierce County Covid Testing</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarColor02">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="index.php">Home
                                    <span class="sr-only">(current)</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="testingLocations.php">Testing Locations</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="makeAppointment.php">Make Appointment</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="viewAppointment.php">View Appointments</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="https://www.cdc.gov/coronavirus/2019-ncov/faq.html">COVID-19 Information</a>
                            </li>
                        </ul>

                    </div>
            </nav>

        <div class = "container">
            <div class = "jumbotron">
                <h2 class = "display">Create A Testing Appointment</h2>
                <form method = "get" action = "createTestAppointment.php">
                    <div class = "mb-3">
                        <label for "firstname">First Name</label>
                        <input name = "firstname" type = "text" class = "form-control" id = "firstname" placeholder= "Enter your First Name..." maxlength = 100 required>
                    </div>

                    <div class = "mb-3">
                        <label for "lastname">Last Name</label>
                        <input  name = "lastname" type = "text" class = "form-control" id = "lastname" placeholder = "Enter your Last Name..." maxlength = 100 required>
                    </div>

                    <div class = "mb-3">
                        <label for "streetaddress">Street Address</label>
                        <input name = "streetaddress" type "text" class = "form-control" id = "streetaddress" placeholder = "Enter your Address..." maxlength = 100 required>
                    </div>

                    <div class = "mb-3">
                        <label type for "city">City</label>
                        <input name = "city" type = "text" class = "form-control" id = "city" placeholder = "Enter your City..." maxlength = 100 required>
                    </div>

                    <div class = "mb-3">
                        <label for "state">State</label>
                        <select name = "state" class = "form-control" id = "state">
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

                    <div class = "mb-3">
                        <label for = "zip-code">Zip Code</label>
                        <input name = "zipcode" type = "text" class = "form-control" id = "zip-code" placeholder = "Enter your Zip Code" maxlength = 5 minlength = 5 required>
                    </div>

                    <div class = "mb-3">	
                        <label for "emailaddress">Email Address</label>
                        <input name = "emailaddress" type = "email" class = "form-control" id = "emailaddress" placeholder="Enter your Email..." pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" maxlength = 100 required>
                    </div>

                    <div class = "mb-3">
                        <label for "phonenumber">Phone Number</label>
                        <input name = "phonenumber" type = "phonenumber" class = "form-control" id ="phonenumber" placeholder= "Enter your Phone Number..." pattern = "(\d){10}" required>
                        <div class = "form-text">Please enter your 10 digit phone number with no special characters (-,?,(,),/,etc..).</div>
                    </div>

                    <div class = "mb-3">
                        <label for = "clinic">Pick your clinic</label>
                        <select name = "clinic" class= "form-control">
                        <?php
                            $connection = mysqli_connect(DBHOST, DBUSER, DBPASS, DBNAME);
                            if (mysqli_connect_errno())
                            {
                                die(mysqli_connect_error());
                            }
                            $sql = "SELECT DISTINCT ClinicID, ClinicName, ClinicAddress, ClinicCity FROM Clinics";
                            if($result = mysqli_query($connection, $sql))
                            {
                                //loop through the data
                                while($row = mysqli_fetch_assoc($result))
                                {
                                    echo '<option value="'. $row['ClinicID'] .'">';
                                    echo $row['ClinicName'];
                                    echo " : ";
                                    echo $row['ClinicAddress'];
                                    echo ", ";
                                    echo $row['ClinicCity'];
                                    echo "</option>";
                                }
                                //release the memory used by the result set
                                mysqli_free_result($result);
                            }
                        ?>
                        </select>   
                    </div>

                    <div class = "mb-3">
                        <button type = "submit" class = "btn btn-success">Sign Up</button>
                        <p><a href = "createAppointmentExisting.php">If you've made appointments with us before, click here to make another one.</a></p>
                    </div>
            </div>
        </div>
    </body>
                               