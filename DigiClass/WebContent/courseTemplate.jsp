<jsp:include page="header.jsp" />
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