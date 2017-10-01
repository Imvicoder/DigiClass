
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/clean-home.min.css" rel="stylesheet">
<link href="css/divideinto3panels.css.css" rel="stylesheet">
<link href="css/jumbotroned.css.css" rel="stylesheet">
<link href="css/simple-sidebar.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<title>Change your way of teaching..!!</title>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">DigClass</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="Courses.jsp">Courses</a></li>
				<li class="active"><a href="#">My Files</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">

				<li class="active"><a href="#">Logout</a></li>
			</ul>
		</div>

	</nav>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-2">
			
				<ul class="list-group">
					<li class="list-group-item"><a href="#"><span
							class="glyphicon glyphicon-inbox" style="color: blueviolet"></span>&nbsp;&nbsp;&nbsp;Class
							Wall</a> <br> <br> <a href="#"><span
							class="glyphicon glyphicon-comment" style="color: blueviolet"></span>&nbsp;&nbsp;&nbsp;Discussions</a><br>
						<br> <a href="#"><span
							class="glyphicon glyphicon-bookmark" style="color: blueviolet"></span>&nbsp;&nbsp;&nbsp;
							Assignments</a><br> <br> <a href="#"><span
							class="glyphicon glyphicon-pencil" style="color: blueviolet"></span>&nbsp;&nbsp;&nbsp;Quiz</a>
						<br> <br> <a href="#"><span
							class="glyphicon glyphicon-tent" style="color: blueviolet">
						</span>&nbsp;&nbsp;&nbsp; Grade Book</a><br> <br> <a href="#"><span
							class="glyphicon glyphicon-user" style="color: blueviolet"></span>&nbsp;&nbsp;&nbsp;Members</a></li>
					<li class="list-group-item">
						<div class="jumbotron ">
							<h4>Membership Code</h4>
						</div>
					</li>

				</ul> 
			</div>
			<div class="col-sm-10">
				<h3>Course name</h3>
				 <ul class="list-group">
					<li class="list-group-item">					
						<div class="form-group">
							<textarea class="form-control input-lg" rows="3" id="inputlg"
								placeholder="Write an Update"></textarea>
						</div> <input type="file" id="upload" name="upload"
						style="visibility: hidden; width: 1px; height: 1px" multiple /> <span
						class="glyphicon glyphicon-upload"></span> <a href=""
						onclick="document.getElementById('upload').click(); return false">Upload</a>
						  <div class='btn-toolbar pull-right'><button type="button" class="btn btn-primary btn-xs">Post</button></div>
					</li>
				</ul>
			</div>
			 
			</div>
		</div>