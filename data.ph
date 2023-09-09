            <form action="<?php echo base_url('jk-institute-certificate');?>" method="POST">
              <!-- <div class="form-group">
                <div class="input-field first-wrap"> -->
                  <div class="row">
                    <div class="col-lg-5 col-md-5 col-12">
                      <input id="search" name="p_p_no" class="form-control" type="text" placeholder="Certificate No" required>
                    </div>
                    <!--<div class="col-lg-3 col-md-3 col-12">-->
                    <!--  <input id="location" name="job_location" class="form-control" type="text" placeholder="location" required>-->
                    <!--</div>-->
                    <div class="col-lg-3 col-md-3 col-12">
                      <button name="submit" class="btn btn-primary btn-lg" type="submit">Search</button>
                    </div>
                    </div>
                </div>
            </form>
          </div>
				<!--<div class="col-lg-12">-->
				<!--	<div class="breadcrumbs creote">-->
				<!--		<ul class="breadcrumb m-auto">-->
							<!-- <li><a href="<?php echo base_url(); ?>">Home</a> </li>
				<!--			<li class="active"> Local Job</li> -->-->
				<!--		</ul>-->
				<!--	</div>-->
				<!--</div>-->
			</div>
		</div>
	</div>
</div>
<!----page header----->

<section>
	<div class="container mt-4 mb-4">
		<div class="row">
			<div class="col-md-12">

                                 <div class="col">
                                    <?php if (!empty($this->session->flashdata('msg'))) { ?>
                                        <div class="alert alert-success" role="alert">
                                            <button type="button" class="close" data-dismiss="alert">X</button>
                                            <?php echo $this->session->flashdata('msg'); ?>
                                        </div>
                                    <?php } ?>
                                   
                                </div>
			                         <table class="table  table-bordered ">
                                    <thead>
                                        <tr style="background-color: #192340;color:#fff;">
                                            
                                            
                                                                                       <th>Office</th>
                                            <th>Name</th>
                                            <th>Trade</th>
                                            <th>P P No </th>
                                            <th>Remark</th>
                                            <th>Grade</th>
                                            <th>Mark </th>
                                            <th>Date</th>
                                         
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php $i = 1;?>
                                    <?php if(!empty($jobposted_list)){?>
                                    <?php foreach($jobposted_list as $value):?>
                                      
                                    <tr>

                                          <td><?php echo $value->office;?></td>
                                      <td><?php echo $value->name;?></td> 
                                      <td><?php echo $value->trade;?></td>
                                      <td><?php echo $value->p_p_no;?></td>
                                      <td><?php echo $value->remark;?></td>
                                      <td><?php echo $value->grade;?></td>
                                       <td><?php echo $value->mark;?></td>
                                      <td><?php echo $value->c_date;?></td>
                                      
                                  
                                      <?php endforeach;?>
                                      <?php }else{?>
                                        <td colspan="2"style="color:red">No data found</td>
                                        <?php }?>
                                  </tr>

                                    </tbody>
                                </table>
