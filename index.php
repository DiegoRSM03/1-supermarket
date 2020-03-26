<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.css">
    <title>PDO</title>

    <?php
        ini_set('display_errors', 1);
        ini_set('display_startup_errors', 1);
        error_reporting(E_ALL);
    ?>
</head>
<body>
    <h1>Conexion a DDBB con POO</h1>
    <div class="form_full">
        <form action="table_where.php" method="get">
            <input type="text" name="category" placeholder="Categoria">
            <select>
				<?php
					require('./connect.php');
					
					try {

						$dbh = new PDO($dbs, $dbUser, $dbPsswd);
						$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
						$dbh->exec('SET CHARACTER SET utf8');
						
						$sql = 'SELECT DISTINCT provider FROM PRODUCTS ORDER BY provider ASC';
						$result = $dbh->prepare($sql);
						$result->execute();
						
						while ($provider = $result->fetch(PDO::FETCH_ASSOC)) {
							echo '<option value="' . $provider['provider'] . '">' . $provider['provider'] .'</option>';
						}

					} catch (Exception $e) {

						echo '<h1>Error al conectar con BD</h1>';
						echo '<h3>Error: ' . $e->getMessage() . '</h3>';
						echo '<h3>Error en linea: ' . $e->getLine() . '</h3>';

					} finally {

						$dbh = null;
						
					}

				?>
            </select>
            <fieldset>
                <legend>Ordernar por:</legend>
                <div><input type="radio" name="orderBy" value="ID"><label>ID</label></div>
                <div><input type="radio" name="orderBy" value="name"><label>Nombre</label></div>
                <div><input type="radio" name="orderBy" value="provider"><label>Provedor</label></div>
            </fieldset>
            <button type="submit">Buscar</button>
        </form>
        <div class="form_lore">
            <h1>Filtros</h1>
            <h2>Busque el producto que desee filtrandolo con las distintas opciones del formulario</h2>
        </div>
    </div>
</body>
</html>