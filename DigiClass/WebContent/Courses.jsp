
<jsp:include page="facultyTemplate.jsp" />
				<div class="col-sm-10">
				<ul class="list-group">
					<li class="list-group-item" style=""><b> Courses</b> <span
						class="tag tag-pill float-xs-right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="button" class="btn btn-success" data-toggle="modal"
							data-target="#myModal" name="CourseCreation"
							value="Create A Course">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="button" name="CourseJoin" class="btn btn-success"
							data-toggle="modal" data-target="#myModal1" value="Join A Course"></span>

						<!-- Modal -->
						<div class="modal fade" id="myModal" role="dialog">

							<div class="modal-dialog">
								<div class="modal-dialog modal-sm">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title" style="color: blue">Create
												Course</h4>
										</div>
										<div class="modal-body">
											<form id="coursecreate" action="MyCourses.jsp" method="post">

												<label for="course name">Course Name:</label> <input
													type="text" class="form-control" name="coname"
													placeholder="Enter Course Name"> <label
													for="last name">Class Name:</label> <input type="text"
													class="form-control" name="clasname"
													placeholder="Enter Class Name">

												<div class="form-check">
													<label for="membership">Membership Approval:</label>
													<div class="checkbox">
														<label><input type="checkbox" value="">Membership
															Approval ?</label>
													</div>

													<div class="modal-footer">
														<button type="submit" class="btn-success"
															id="coursecreate">Save</button>

													</div>
													</div>
											</form>
										</div>

									</div>
								</div>
							</div>
						</div>
						</li>
						</ul>
			</div>
			<div class="modal fade" id="myModal1" role="dialog"
				aria-hidden="true">

				<div class="modal-dialog">
					<div class="modal-dialog modal-sm">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title" style="color: blue">Join a Course</h4>
							</div>
							<div class="modal-body">
								<form id="coursejoin" action="#" method="post">

									<label for="course name">Membership Code:</label> <input
										type="text" class="form-control" name="code"
										placeholder="Enter Membership Code">



									<div class="modal-footer">
										<button type="submit" class="btn-success" id="coursejoining">Join
											now</button>

									</div>
								</form>
							</div>

						</div>
					</div>
				</div>
			</div>

</div>

	</div>



</body>
</html>
