<?php
include'../includes/connection.php';
?>
          <!-- Page Content -->
          <div class="col-lg-12">
            <?php
              $pc = $_POST['prodcode'];
              $name = $_POST['name'];
              $desc = $_POST['description'];
              $qty = $_POST['quantity'];
              $oh = $_POST['onhand'];
              $pr = $_POST['price']; 
              $cat = $_POST['category'];
              $supp = $_POST['supplier'];
              $dats = $_POST['datestock']; 
        
              switch($_GET['action']){
                case 'add': 
                  // Upload product images
                  $product_img = $_FILES['productImage']['name'];
                  $product_temp_img = $_FILES['productImage']['tmp_name'];

                  $product_img_ext = pathinfo($product_img, PATHINFO_EXTENSION);
                  $product_img_ex_loc = strtolower($product_img_ext);

                  $product_new_name_image = uniqid("productImage-",true).'.'.$product_img_ex_loc;

                  $product_img_upload_path = "../img/productImage/".$product_new_name_image;


                    $query = "INSERT INTO product
                              (PRODUCT_ID, PRODUCT_CODE, NAME, DESCRIPTION, QTY_STOCK, ON_HAND, PRICE, CATEGORY_ID, SUPPLIER_ID,PRODUCT_IMAGE, DATE_STOCK_IN)
                              VALUES (Null,'{$pc}','{$name}','{$desc}','{$qty}',1,{$pr},{$cat},{$supp},'{$product_new_name_image}','{$dats}')";
                      if(mysqli_query($db,$query)or die ('Error in updating product in Database '.$query)){
                        move_uploaded_file($product_temp_img, $product_img_upload_path);
                      }

              }
            ?>
              <script type="text/javascript">window.location = "product.php";</script>
          </div>

<?php
include'../includes/footer.php';
?>