<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/bootstrap.min.css" rel="stylesheet">     
        <link href="css/clean-home.min.css" rel="stylesheet">
        <link href="css/homebgimagejumbotron.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
       
        <title>Welcome to Your Digital Class</title>

    </head>
    <body>

        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">DigiClass</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <li class="active"><a href="#">About</a></li>
                    <li class="active"><a href="#">Contact Us</a></li>

                </ul>
                <ul class="nav navbar-nav navbar-right">

                    <li class="bottom-right"><button type="button" class="btn-link" data-toggle="modal" data-target="#myModal3"><h4>Login</h4></button>
                        <!-- Modal -->
                        <div class="modal fade" id="myModal3" role="dialog">
                            <div class="modal-dialog modal-sm">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">Login to Digital Class</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form>

                                            <div class="form-group">
                                                <label for="email">Email:</label>
                                                <input type="email" class="form-control" name="lemail" placeholder="Enter email">
                                            </div>

                                            <div class="form-group">
                                                <label for="pwd">Password:</label>
                                                <input type="password" class="form-control" name="lpwd" placeholder="Enter password">
                                            </div>
                                            <div class="modal-footer">
                                                <button type="submit" class="btn-success">Login</button>

                                            </div>

                                        </form>
                                    </div>

                                </div>
                            </div>
                        </div>
					</li>
                </ul>
            </div>
            <div class="row" >                
                <div class="col-md-12 jumbotron">
                    <h1>Your Digital Class is just One Click Away.. </h1>
                    <br><br><br>
                    <footer>
                        <div class="col-md-offset-3">
                            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">INSTRUCTORS:FREE SIGN UP</button>
                            <!-- Modal -->
                            <div class="modal fade" id="myModal" role="dialog">
                                <div class="modal-dialog modal-sm">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">Register Instructor</h4>
                                        </div>
                                        <div class="modal-body">
                                            <form id="faculty_form" action="RegInstructor"method="post">
                                                <div class="form-group">
                                                    <label for="first name">First Name:</label>
                                                    <input type="text" class="form-control" name="ffname" placeholder="Enter First Name">
                                                </div>
                                                <div class="form-group">
                                                    <label for="last name">Last Name:</label>
                                                    <input type="text" class="form-control" name="flname" placeholder="Enter Last Name">
                                                </div>
                                                <div class="form-group">
                                                    <label for="email">Email:</label>
                                                    <input type="email" class="form-control" name="femail" placeholder="Enter email">
                                                </div>
                                                <div class="form-group">
                                                    <label for="retype email">Confirm Email:</label>
                                                    <input type="email" class="form-control" name="freemail" placeholder="Retype email">
                                                </div>                                    
                                                <div class="form-check">
                                                    <label for="gender">Sex:</label>
                                                    <label class="form-check-inline">
                                                        <input class="form-check-input" type="radio" name="fsex"  value="Male"> Male
                                                    </label>
                                                    <label class="form-check-inline">
                                                        <input class="form-check-input" type="radio" name="fsex"  value="Female"> Female
                                                    </label>
                                                </div>
                                                <div class="form-group">
                                                    <label for="pwd">Password:</label>
                                                    <input type="password" class="form-control" name="fpwd" placeholder="Enter password">
                                                </div>
                                                <div class="form-group">
                                                    <label for="retype-pwd">Confirm Password:</label>
                                                    <input type="password" class="form-control" nae="frepwd" placeholder="Retype password">
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="submit" class="btn-success" id="faculty_reg">Register</button>

                                                </div>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal2">STUDENTS:FREE SIGN UP</button>
                            <!-- Modal -->
                            <div class="modal fade" id="myModal2" role="dialog">
                                <div class="modal-dialog modal-sm">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">Register Student</h4>
                                        </div>
                                        <div class="modal-body">
                                            <form action="RegStudent"method="post">
                                                <div class="form-group">
                                                    <label for="Access Code">Access Code:</label>
                                                    <input type="text" class="form-control" name="code" placeholder="Enter Access Code">
                                                </div>
                                                <div class="form-group">
                                                    <label for="first name">First Name:</label>
                                                    <input type="text" class="form-control" name="sfname" placeholder="Enter First Name">
                                                </div>
                                                <div class="form-group">
                                                    <label for="last name">Last Name:</label>
                                                    <input type="text" class="form-control" name="slname" placeholder="Enter Last Name">
                                                </div>
                                                <div class="form-group">
                                                    <label for="email">Email:</label>
                                                    <input type="email" class="form-control" name="semail" placeholder="Enter email">
                                                </div>
                                                <div class="form-group">
                                                    <label for="retype email">Confirm Email:</label>
                                                    <input type="email" class="form-control" name="sreemail" placeholder="Retype email">
                                                </div>                                    
                                                <div class="form-check">
                                                    <label for="gender">Sex:</label>
                                                    <label class="form-check-inline">
                                                        <input class="form-check-input" type="radio" name="ssex"  value="Male"> Male
                                                    </label>
                                                    <label class="form-check-inline">
                                                        <input class="form-check-input" type="radio" name="ssex"  value="Female"> Female
                                                    </label>
                                                </div>
                                                <div class="form-group">
                                                    <label for="pwd">Password:</label>
                                                    <input type="password" class="form-control" name="spwd" placeholder="Enter password">
                                                </div>
                                                <div class="form-group">
                                                    <label for="retype-pwd">Confirm Password:</label>
                                                    <input type="password" class="form-control" name="srepwd" placeholder="Retype password">
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="submit" class="btn-success" id="stud_reg">Register</button>
                                                </div>
                                            </form>
                                        </div>

                                    </div>

                                </div>
                            </div>
                        </div>
                    </footer>

                    <h2>
                        <br>
                        <br>
                        <br>
                        <br>                        
                        This application is developed to help Instructors and
                        Students by providing them a common place to interact outside the 
                        geographical boundaries.Here Instructor can provide notes to their students
                        and can judge them as well by taking quiz.                   
                        <h2>
                            </div>
                            </div>
                            </nav>


                            </body>
                            </html>
