<?php
    require_once '../includes/connection.php';
    $query = "SELECT SUM(`GRANDTOTAL`) as yearlyProfit FROM transaction WHERE YEAR(`DatePurchased`) = YEAR(CURRENT_DATE())";
    $result = mysqli_query($db, $query) or die(mysqli_error($db));
    $row = mysqli_fetch_array($result);

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
        MAX MANGO SALES REPORT
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
<table width="600" align='center'>
    <tr>

        <td width='230px'><h1>Yearly Sales</h1>   <?= date("d/m/Y") ?></td>

        <td align='right'>
             <u><b>SALES AMOUNT:</b> <span style="color: green;"><?= "₱ ". number_format($row['yearlyProfit'],2); ?></span> </u>
        </td>
    </tr>
</table>

<br><br>

        <table border="1" align='center' width="650">
                <tr>
                    <td style="width: 200px;">Reference Number</td>
                    <td>Credits</td>
                    <td>Amount</td>
                    <td>Date</td>
                    <td>ID No.</td>
                    <td>Type</td>
                </tr>

            <tbody>
                <?= PDF_Admin_totalProfit(); ?>
            </tbody>
        </table>
        
