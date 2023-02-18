<?php
include'../includes/connection.php';
?>
          <!-- Page Content -->
          <div class="col-lg-12">
            <?php
              $pc = $_POST['itemcode'];
              $name = $_POST['itemname'];
              $desc = $_POST['itemdescription'];
              $qty = $_POST['itemquantity'];
              $cat = $_POST['category'];
              $supp = $_POST['itemsupplier'];
              $dats = $_POST['itemdatestock']; 
              $exp = $_POST['itemexpire']; 
        
              switch($_GET['action']){
                case 'add': 
                  // Upload product images
                  $item_img = $_FILES['itemImage']['name'];
                  $item_temp_img = $_FILES['itemImage']['tmp_name'];

                  $item_img_ext = pathinfo($item_img, PATHINFO_EXTENSION);
                  $item_img_ex_loc = strtolower($item_img_ext);

                  $item_new_name_image = uniqid("itemImage-",true).'.'.$item_img_ex_loc;

                  $item_img_upload_path = "../img/itemImage/".$item_new_name_image;


                    $query = "INSERT INTO product
                              (PRODUCT_ID, PRODUCT_CODE, NAME, DESCRIPTION, QTY_STOCK,CATEGORY_ID, ON_HAND, SUPPLIER_ID,PRODUCT_IMAGE, DATE_STOCK_IN, DATE_EXPIRE)
                              VALUES (Null,'{$pc}','{$name}','{$desc}','{$qty}','{$cat}',1,{$supp},'{$item_new_name_image}','{$dats}','{$exp}')";
                      if(mysqli_query($db,$query)or die ('Error in updating product in Database '.$query)){
                        move_uploaded_file($item_temp_img, $item_img_upload_path);
                      }


              }
            ?>
              <script type="text/javascript">window.location = "inventory.php";</script>
          </div>

<?php
include'../includes/footer.php';
?>