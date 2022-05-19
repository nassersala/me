#  Simple todo web app in PHP and Bash

```
==> action.php <==
<?php
 $output = shell_exec("./script.sh " . $_GET["2do"]);
 echo "added " . $output;
?>

==> script.sh <==
echo "- $@" >> todos
echo "$@"

==> index.php <==
  <body>
  <?php echo `cat todos` ?>
  <form action="/action.php">
    <input type="text" name="2do" value="go home"><br><br>
    <input type="submit" value="Submit">
  </form>
  </body>
</html>
```

Run the php server with: `php -S localhost:8000`
