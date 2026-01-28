<?php include ('include/dbcon.php');
$ID=$_GET['user_id'];
 ?>
<?php include ('header.php'); ?>

        <div class="page-title">
            <div class="title_left">
                <h3>
					<small>Home / Members /</small> Edit Member
                </h3>
            </div>
        </div>
        <div class="clearfix"></div>
 
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2><i class="fa fa-pencil"></i> Edit Member Information</h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                       
                            <li><a class="close-link"><i class="fa fa-close"></i></a></li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <!-- content starts here -->
<?php
  $query=mysqli_query($con,"select * from user where user_id='$ID'")or die(mysqli_error($con));
$row=mysqli_fetch_array($query);
  ?>

                            <form method="post" enctype="multipart/form-data" class="form-horizontal form-label-left">
                       
                    
                                <div class="form-group">
                                    <label class="control-label col-md-4" for="first-name">Student Number | ID<span class="required" style="color:red;">*</span>
                                    </label>
                                    <div class="col-md-4">
                                        <input type="number" value="<?php echo $row['student_id']; ?>" name="student_id" id="first-name2" class="form-control col-md-7 col-xs-12" required="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-4" for="first-name">First Name<span class="required" style="color:red;">*</span>
									</label>
                                    <div class="col-md-4">
                                        <input type="text" value="<?php echo $row['first_name']; ?>" name="first_name" id="first-name2" class="form-control col-md-7 col-xs-12" required="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-4" for="last-name">Last Name<span class="required" style="color:red;">*</span>
                                    </label>
                                    <div class="col-md-4">
                                        <input type="text" value="<?php echo $row['last_name']; ?>" name="last_name" id="last-name2" class="form-control col-md-7 col-xs-12" required="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-4" for="last-name">Contact<span class="required" style="color:red;">*</span>
                                    </label>
                                    <div class="col-md-4">
                                        <input type='tel' value="<?php echo $row['contact']; ?>" autocomplete="off"  maxlength="10" name="contact" id="last-name2" class="form-control col-md-7 col-xs-12" required="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-4" for="last-name">Gender<span class="required" style="color:red;">*</span>
                                    </label>
									<div class="col-md-3">
                                        <select name="gender" class="select2_single form-control" tabindex="-1" required="">
                                            <option value="<?php echo $row['gender']; ?>"><?php echo $row['gender']; ?></option>
                                            <option value="Male">Male</option>
                                            <option value="Female">Female</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-4" for="last-name">Member Type<span class="required" style="color:red;">*</span>
                                    </label>
                                    <div class="col-md-3">
                                        <select name="type" class="select2_single form-control" tabindex="-1" required="">
                                            <option value="<?php echo $row['type']; ?>"><?php echo $row['type']; ?></option>
                                            <option value="Student">Student</option>
                                            <option value="Teacher">Teacher</option>
                                        </select>
                                    </div>
                                </div>			
                                <div class="form-group">
                                    <label class="control-label col-md-4" for="last-name">Branch<span class="required" style="color:red;">*</span>
                                    </label>
                                    <div class="col-md-3">
                                        <select name="branch" class="select2_single form-control" tabindex="-1" required="">
                                            <option value="<?php echo $row['branch']; ?>"><?php echo $row['branch']; ?></option>
                                            <option value="N/A">N/A</option>
                                            <option value="CSE">CSE</option>
                                            <option value="ME">ME</option>
                                            <option value="EC">EC</option>
                                            <option value="EN">EN</option>
                                            <option value="Civil">Civil</option>
                                            <option value="B-pharma">B-pharma</option>
                                            <option value="BBA">BBA</option>
                                            <option value="MBA">MBA</option>
                                        </select>
                                    </div>
                                </div>					
                                <div class="form-group">
                                    <label class="control-label col-md-4" for="last-name">Address<span class="required" style="color:red;">*</span>
                                    </label>
                                    <div class="col-md-4">
                                        <input type="text" value="<?php echo $row['address']; ?>" name="address" id="last-name2" class="form-control col-md-7 col-xs-12" required="">
                                    </div>
                                </div>
                                
                                <div class="ln_solid"></div>
                                <div class="form-group">
                                    <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
                                        <a href="member.php"><button type="button" class="btn btn-primary"><i class="fa fa-times-circle-o"></i> Cancel</button></a>
                                        <button type="submit" name="update" class="btn btn-success"><i class="glyphicon glyphicon-save"></i> Update</button>
                                    </div>
                                </div>
                            </form>
							
<?php
$id =$_GET['user_id'];
if (isset($_POST['update'])) {
			

$student_id = $_POST['student_id'];
$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
$contact = $_POST['contact'];
$gender = $_POST['gender'];
$address = $_POST['address'];
$type = $_POST['type'];
$branch = $_POST['branch'];

 $regex_num = "/^[6789][0-9]{9}$/";
 if (!preg_match($regex_num, $contact)) {
                        echo "<script>alert('Not a valid contact number'); window.location='member.php'</script>";
}
else
{		
mysqli_query($con," UPDATE user SET student_id='$student_id', first_name='$first_name', last_name='$last_name', contact='$contact', 
gender='$gender', address='$address', type='$type', branch='$branch' WHERE user_id = '$id' ")or die(mysqli_error($con));
echo "<script>alert('Successfully Updated User Info!'); window.location='member.php'</script>";
}

}
?>
						
                        <!-- content ends here -->
                    </div>
                </div>
            </div>
        </div>

<?php include ('footer.php'); ?>