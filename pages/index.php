<?php
include'../includes/connection.php';
include'../includes/sidebar.php';
?><?php 

                $query = 'SELECT ID, t.TYPE
                          FROM users u
                          JOIN type t ON t.TYPE_ID=u.TYPE_ID WHERE ID = '.$_SESSION['MEMBER_ID'].'';
                $result = mysqli_query($db, $query) or die (mysqli_error($db));
      
                while ($row = mysqli_fetch_assoc($result)) {
                          $Aa = $row['TYPE'];
                   
if ($Aa=='User'){
           
             ?>    <script type="text/javascript">
                      //then it will be redirected
                      alert("Restricted Page! You will be redirected to POS");
                      window.location = "pos.php";
                  </script>
             <?php   }
                         
           
}   
            ?>
          <div class="row show-grid" style="background-image: url(https://scontent.fcrk2-2.fna.fbcdn.net/v/t39.30808-6/311199280_118484467677379_3317240741909409820_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=DnSE3j5bijcAX9Q5-lG&_nc_ht=scontent.fcrk2-2.fna&oh=00_AfDUhhSzn0V6OFf1ZgKTGb_sseEhufEMCW_79MLetElvrA&oe=63A0566F); background-size: cover; height: 80vh;">
            <!-- Customer ROW -->
            <div class="col-md-3">
            <!-- Customer record -->
            <div class="col-md-12 mb-3">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-0">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Customers</div>
                      <div class="h6 mb-0 font-weight-bold text-gray-800">
                        <?php 
                        $query = "SELECT COUNT(*) FROM customer";
                        $result = mysqli_query($db, $query) or die(mysqli_error($db));
                        while ($row = mysqli_fetch_array($result)) {
                            echo "$row[0]";
                          }
                        ?> Record(s)
                      </div>
                    </div>
                      <div class="col-auto">
                        <i class="fas fa-users fa-2x text-gray-300 mt-3"></i>
                      </div>
                  </div>
                </div>
              </div>
            </div>
            

            <!-- Supplier record -->
            <div class="col-md-12 mb-3">
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-0">
                      <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Supplier</div>
                      <div class="h6 mb-0 font-weight-bold text-gray-800">
                        <?php 
                        $query = "SELECT COUNT(*) FROM supplier";
                        $result = mysqli_query($db, $query) or die(mysqli_error($db));
                        while ($row = mysqli_fetch_array($result)) {
                            echo "$row[0]";
                          }
                        ?> Record(s)
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-users fa-2x text-gray-300 mt-3"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- Daily Sales record -->
            <div class="col-md-12 mb-3">
              <div class="card border-left-info shadow h-100 py-2 position-relative">
              <a href="../ReportPDF/weeklysales.php" style="position: absolute; right: 5%;" target="_blank"><i class="fas fa-print fa-1x text-blue"></i></a>
                <div class="card-body">
                  <div class="row no-gutters align-items-center">

                    <div class="col mr-0">
                      <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Weekly Sales</div>
                      <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                          <div class="h6 mb-0 mr-3 font-weight-bold text-gray-800">
                          <?php 
                          $query = "SELECT SUM(`GRANDTOTAL`) as weeklyProfit FROM transaction WHERE YEARWEEK(`DatePurchased`, 1) = YEARWEEK(CURDATE(), 1)";
                          $result = mysqli_query($db, $query) or die(mysqli_error($db));
                          while ($row = mysqli_fetch_array($result)) {
                              echo "₱ ". number_format($row['weeklyProfit'],2);
                            }
                          ?>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="col-auto">
                    <i class="fas fa-coins fa-2x text-gray-300 mt-3"></i>
                    </div>

                  </div>
                </div>
              </div>
            </div>

          </div>
            <!-- Employee ROW -->
          <div class="col-md-3">
            <!-- Employee record -->
            <div class="col-md-12 mb-3">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-0">
                      <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Employees</div>
                      <div class="h6 mb-0 font-weight-bold text-gray-800">
                        <?php 
                        $query = "SELECT COUNT(*) FROM employee";
                        $result = mysqli_query($db, $query) or die(mysqli_error($db));
                        while ($row = mysqli_fetch_array($result)) {
                            echo "$row[0]";
                          }
                        ?> Record(s)
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-users fa-2x text-gray-300 mt-3"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- User record -->
            <div class="col-md-12 mb-3">
              <div class="card border-left-danger shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-0">
                      <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">Registered Account</div>
                      <div class="h6 mb-0 font-weight-bold text-gray-800">
                        <?php 
                        $query = "SELECT COUNT(*) FROM users WHERE TYPE_ID=2";
                        $result = mysqli_query($db, $query) or die(mysqli_error($db));
                        while ($row = mysqli_fetch_array($result)) {
                            echo "$row[0]";
                          }
                        ?> Record(s)
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-user fa-2x text-gray-300 mt-3"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- Monthly Sales record -->
            <div class="col-md-12 mb-3">
              <div class="card shadow h-100 py-2 position-relative" style="border-left: 4px solid #f6851d;">
              <a href="../ReportPDF/monthlysales.php" style="position: absolute; right: 5%;" target="_blank"><i class="fas fa-print fa-1x text-blue"></i></a>
                <div class="card-body">
                  <div class="row no-gutters align-items-center">

                    <div class="col mr-0">
                      <div class="text-xs font-weight-bold  text-uppercase mb-1" style="color: #f6851d;">Monthly Sales</div>
                      <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                          <div class="h6 mb-0 mr-3 font-weight-bold text-gray-800">
                          <?php 
                          $query = "SELECT SUM(`GRANDTOTAL`) as monyhlyProfit FROM transaction WHERE MONTH(`DatePurchased`) = MONTH(CURRENT_DATE()) AND YEAR(`DatePurchased`) = YEAR(CURRENT_DATE())";
                          $result = mysqli_query($db, $query) or die(mysqli_error($db));
                          while ($row = mysqli_fetch_array($result)) {
                              echo "₱ ". number_format($row['monyhlyProfit'],2);
                            }
                          ?>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="col-auto">
                      <i class="fas fa-coins fa-2x text-gray-300 mt-3"></i>
                    </div>

                  </div>
                </div>
              </div>
            </div>

          </div>
          <!-- PRODUCTS ROW -->
          <div class="col-md-3">
            <!-- Product record -->
            <div class="col-md-12 mb-3">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">

                    <div class="col mr-0">
                      <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Product</div>
                      <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                          <div class="h6 mb-0 mr-3 font-weight-bold text-gray-800">
                          <?php 
                          $query = "SELECT COUNT(*) FROM product";
                          $result = mysqli_query($db, $query) or die(mysqli_error($db));
                          while ($row = mysqli_fetch_array($result)) {
                              echo "$row[0]";
                            }
                          ?> Record(s)
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="col-auto">
                      <i class="fas fa-clipboard-list fa-2x text-gray-300 mt-3"></i>
                    </div>

                  </div>
                </div>
              </div>
            </div>
            <!-- Daily Sales record -->
            <div class="col-md-12 mb-3">
              <div class="card  shadow h-100 py-2 position-relative" style="border-left: 4px solid #733a98;">
              <a href="../ReportPDF/dailysales.php" style="position: absolute; right: 5%;" target="_blank"><i class="fas fa-print fa-1x text-blue"></i></a>
                <div class="card-body">
                  <div class="row no-gutters align-items-center">

                    <div class="col mr-0">
                      <div class="text-xs font-weight-bold text-uppercase mb-1" style="color: #733a98;">Daily Sales</div>
                      <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                          <div class="h6 mb-0 mr-3 font-weight-bold text-gray-800">
                          <?php 
                          $query = "SELECT SUM(`GRANDTOTAL`) as dailyProfit FROM transaction WHERE DATE_FORMAT(`DatePurchased`, '%Y-%m-%d') = CURDATE()";
                          $result = mysqli_query($db, $query) or die(mysqli_error($db));
                          while ($row = mysqli_fetch_array($result)) {
                              echo "₱ ". number_format($row['dailyProfit'],2);
                            }
                          ?>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="col-auto">
                    <i class="fas fa-coins fa-2x text-gray-300 mt-3"></i>
                    </div>

                  </div>
                </div>
              </div>
            </div>
            <!-- Yearly Sales record -->
            <div class="col-md-12 mb-3">

              <div class="card shadow h-100 py-2 position-relative" style="border-left: 4px solid #8cc540;">
                <a href="../ReportPDF/yearlysales.php" style="position: absolute; right: 5%;" target="_blank"><i class="fas fa-print fa-1x text-blue"></i></a>
              
                <div class="card-body ">
                  
                  <div class="row no-gutters align-items-center">

                    <div class="col mr-0 ">

                      <div class="text-xs font-weight-bold text-uppercase mb-1" style="color: #8cc540;">Yearly Sales</div>
                      <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                          <div class="h6 mb-0 mr-3 font-weight-bold text-gray-800">
                          <?php 
                          $query = "SELECT SUM(`GRANDTOTAL`) as yearlyProfit FROM transaction WHERE YEAR(`DatePurchased`) = YEAR(CURRENT_DATE())";
                          $result = mysqli_query($db, $query) or die(mysqli_error($db));
                          while ($row = mysqli_fetch_array($result)) {
                              echo "₱ ". number_format($row['yearlyProfit'],2);
                            }
                          ?>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="col-auto">
                    
                      <i class="fas fa-coins fa-2x text-gray-300 mt-3"></i>
                    </div>

                  </div>
                </div>
              </div>
            </div>
            

            
 

<?php
include'../includes/footer.php';
?>