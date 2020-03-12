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
            <fieldset>
                <legend>Provedor</legend>
                <div><input type="radio" name="provider" value="Aux joyeux ecclésiastiques"><label>Aux joyeux ecclésiastiques</label></div>
                <div><input type="radio" name="provider" value="Bigfoot Breweries"><label>Bigfoot Breweries</label></div>
                <div><input type="radio" name="provider" value="Cooperativa de Quesos 'Las Cabras'"><label>Cooperativa de Quesos 'Las Cabras'</label></div>
                <div><input type="radio" name="provider" value="Escargots Nouveaux"><label>Escargots Nouveaux</label></div>
                <div><input type="radio" name="provider" value="Exotic Liquids"><label>Exotic Liquids</label></div>
                <div><input type="radio" name="provider" value="Forêts d'érables"><label>Forêts d'érables</label></div>
                <div><input type="radio" name="provider" value="Formaggi Fortini s.r.l."><label>Formaggi Fortini s.r.l.</label></div>
                <div><input type="radio" name="provider" value="G'day, Mate"><label>G'day, Mate</label></div>
                <div><input type="radio" name="provider" value="Gai pâturage"><label>Gai pâturage</label></div>
                <div><input type="radio" name="provider" value="Grandma Kelly's Homestead"><label>Grandma Kelly's Homestead</label></div>
                <details>
                    <summary>Mas provedores...</summary>
                    <div><input type="radio" name="provider" value="Heli Süßwaren GmbH & Co. KG"><label>Heli Süßwaren GmbH & Co. KG</label></div>
                    <div><input type="radio" name="provider" value="Karkki Oy"><label>Karkki Oy</label></div>
                    <div><input type="radio" name="provider" value="Leka Trading"><label>Leka Trading</label></div>
                    <div><input type="radio" name="provider" value="Lyngbysild"><label>Lyngbysild</label></div>
                    <div><input type="radio" name="provider" value="Ma Maison"><label>Ma Maison</label></div>
                    <div><input type="radio" name="provider" value="Mayumi's"><label>Mayumi's</label></div>
                    <div><input type="radio" name="provider" value="New England Seafood Cannery"><label>New England Seafood Cannery</label></div>
                    <div><input type="radio" name="provider" value="New Orleans Cajun Delights"><label>New Orleans Cajun Delights</label></div>
                    <div><input type="radio" name="provider" value="Nord-Ost-Fisch Handelsgesellschaft mbH"><label>Nord-Ost-Fisch Handelsgesellschaft mbH</label></div>
                    <div><input type="radio" name="provider" value="Norske Meierier"><label>Norske Meierier</label></div>
                    <div><input type="radio" name="provider" value="Pasta Buttini s.r.l."><label>Pasta Buttini s.r.l.</label></div>
                    <div><input type="radio" name="provider" value="Pavlova, Ltd."><label>Pavlova, Ltd.</label></div>
                    <div><input type="radio" name="provider" value="PB Knäckebröd AB"><label>PB Knäckebröd AB</label></div>
                    <div><input type="radio" name="provider" value="Plutzer Lebensmittelgroßmärkte AG"><label>Plutzer Lebensmittelgroßmärkte AG</label></div>
                    <div><input type="radio" name="provider" value="Refrescos Americanas LTDA"><label>Refrescos Americanas LTDA</label></div>
                    <div><input type="radio" name="provider" value="Specialty Biscuits, Ltd."><label>Specialty Biscuits, Ltd.</label></div>
                    <div><input type="radio" name="provider" value="Svensk Sjöföda AB"><label>Svensk Sjöföda AB</label></div>
                    <div><input type="radio" name="provider" value="Tokyo Traders"><label>Tokyo Traders</label></div>
                    <div><input type="radio" name="provider" value="Zaanse Snoepfabriek"><label>Zaanse Snoepfabriek</label></div>

                </details>
            </fieldset>
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