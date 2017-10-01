<jsp:include page="facultyTemplate.jsp" />
<div class="col-sm-10">
	<h4>Recent Activity</h4>
	<ul class="list-group">
		<li class="list-group-item">
			<div class="form-group">
				<textarea class="form-control input-lg" rows="2" id="inputlg"
					placeholder="Write an Update"></textarea>
			</div> <input type="file" id="upload" name="upload"
			style="visibility: hidden; width: 1px; height: 1px" multiple /> <span
			class="glyphicon glyphicon-upload"></span> <a href=""
			onclick="document.getElementById('upload').click(); return false">Upload</a>
			<div class='btn-toolbar pull-right'>
				<button type="button" class="btn btn-primary btn-xs">Post</button>
			</div>
		</li>
</ul>
	<div class="col-sm-3">
	</div>
	<ul class="list-group">
 	<li class="list-group-item">
	<!-- <div class="col-sm-7"> -->
	<h4>Post Assignment</h4>
  <form class="form-horizontal" action="/action_page.php">
    <div class="form-group">
      <label class="control-label col-sm-2" for="AssignmentName">Assignment Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="assignmentNamel" placeholder="Enter Assignment Name" name=assihnmentName">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="Description">Description:</label>
      <div class="col-sm-10">          
     <textarea class="form-control input-lg" rows="2" id="inputlg" placeholder="Write an Assignment Description" id="assignmentDescription"></textarea>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
          <label><input type="checkbox" name="AssignmentReturn"> Assignment Return</label>
        </div>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="MaximumMarks">Maximum Marks:</label>
      <div class="col-sm-10">
        <input type="number" class="form-control" id="maxMarks" placeholder="Enter Maximum Marks" name=maxMarks">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="DueDate">DueDate:</label>
      <div class="col-sm-10">
        <input type="date" class="form-control" id="duedate" placeholder="Enter Due Date" name=dueDate">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="selectCourses">Select Courses:</label>
      <div class="col-sm-10">
        <div class="dropup">
    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Dropup Example
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="#">HTML</a></li>
      <li><a href="#">CSS</a></li>
      <li><a href="#">JavaScript</a></li>   
    </ul>
  </div>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success">Submit</button>
      </div>
    </div>
  </form>
	
	
	<!-- </div> -->
	</li>
	</ul>
	<div class="col-sm-3">
	</div>
	</div>

</body>
</html>