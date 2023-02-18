<?php
    require_once '../includes/connection.php';
    

?>

<style>
    *{
        font-family: 'sans-serif';
        text-align: center;
    }

</style>



<table  align='center' style="border: none;">
    <tr>
        <td width='380px'><img src="../img/maxmango.jpg" alt="" style="width: 150px;"><br><br>
        MAX MANGO SALES RECEIPT
    </td>
        <td >
        Address: Sampaloc V, Bucal, <br>
        Dasmarinas City, Cavite <br>
        Phone: 09675712345 <br>
        Email: contact@abcrentalcars.online
    </td>
    </tr>
</table>
<br>
<hr>


<br><br>

        <table border="1" align='center' width="700">
                <tr>
                    <td style="width: 50px;">Transaction ID</td>
                    <td style="width: 50px;">No. of Items</td>
                    <td>Subtotal</td>
                    <td>LESSVAT</td>
                    <td>NETVAT</td>
                    <td>ADDVAT</td>
                    <td>ADDVAT</td>
                    <td>CASH</td>
                    <td>DATE</td>
                </tr>

            <tbody>
                <?php

                $query = "SELECT * FROM transaction ORDER BY TRANS_ID DESC LIMIT 1";
                $result = mysqli_query($db, $query) or die(mysqli_error($db));
                $row = mysqli_fetch_array($result);
                    ?>

                <tr>
                    <td><?php echo $row['TRANS_D_ID']; ?></td>
                    <td><?php echo $row['NUMOFITEMS']; ?></td>
                    <td><?php echo $row['SUBTOTAL']; ?></td>
                    <td><?php echo $row['LESSVAT']; ?></td>
                    <td><?php echo $row['NETVAT']; ?></td>
                    <td><?php echo $row['ADDVAT']; ?></td>
                    <td><?php echo $row['GRANDTOTAL']; ?></td>
                    <td><?php echo $row['CASH']; ?></td>
                    <td><?php echo $row['DatePurchased']; ?></td>
                </tr>
            </tbody>
        </table>
        
