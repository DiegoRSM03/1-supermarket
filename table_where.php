<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="./css/style.css">

    <title>PDO</title>
</head>
<body>
    <?php
        ini_set('display_errors', 1);
        ini_set('display_startup_errors', 1);
        error_reporting(E_ALL);
    ?>
    <h1>Conexion a DDBB con POO</h1>
    <div class="supermarket-products">
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Proveedor</th>
                    <th>Categoría</th>
                    <th>Cantidad</th>
                    <th>Precio Unit</th>
                    <th>Existencias</th>
                    <th>Demandas</th>
                </tr>
            </thead>
            <tbody>
                <?php
					$category = isset($_GET['category']) ? $_GET['category'] : '';
					$provider = isset($_GET['provider']) ? $_GET['provider'] : '';
					$orderBy = isset($_GET['orderBy']) ? $_GET['orderBy'] : '';

					try {
						require('./connect.php');
						
						$dbh = new PDO($dbs, $dbUser, $dbPsswd);
						$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
						$dbh->exec('SET CHARACTER SET utf8');
					
						$sql = 'SELECT * FROM PRODUCTS';
						if ($category != '' && $provider != '') {
							$sql .= ' WHERE category=:sqlCategory AND provider =:sqlProvider';
						}else if ($category == '' && $provider != '') {
							$sql .= ' WHERE provider=:sqlProvider';
						}else if ($category != '' && $provider == '') {
							$sql .= ' WHERE category=:sqlCategory';
						}
						if ($orderBy != '') {
							$sql .= " ORDER BY $orderBy";
						}
						
						$result = $dbh->prepare($sql);
						if ($category != '' && $provider != '') {
							$result->bindValue(':sqlCategory', $category);
							$result->bindValue(':sqlProvider', $provider);
						}else if ($category == '' && $provider != '') {
							$result->bindValue(':sqlProvider', $provider);
						}else if ($category != '' && $provider == '') {
							$result->bindValue(':sqlCategory', $category);
						}
						
						$result->execute();
						
						while ($product = $result->fetch(PDO::FETCH_ASSOC)) {
							echo '<tr>';
								echo "<td>$product[id]</td>";
								echo "<td>$product[name]</td>";
								echo "<td>$product[provider]</td>";
								echo "<td>$product[category]</td>";
								echo "<td>$product[unit_quantity]</td>";
								echo "<td>$ $product[unit_price]</td>";
								echo "<td>$product[unit_exist]</td>";
								echo "<td>$product[unit_demand]</td>";
							echo '</tr>';
						}
					
					} catch (Exception $e) {
						
						echo '<h1>Error al conectar con BD</h1>';
						echo '<h3>Error: ' . $e->getMessage() . '</h3>';
						echo '<h3>Error en linea: ' . $e->getLine() . '</h3>';

					} finally {

						$dbh = null;

					}
                ?>
            </tbody>
        </table>
    </div>
</body>
</html>