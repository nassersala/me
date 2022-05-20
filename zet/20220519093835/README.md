#  Simple PHP todo app with redirection

```
==> action.php <==
<html><head><meta http-equiv='refresh' content='0; URL=/'></head>
<body align="center"><?php `echo {$_GET["2do"]} >>todos` ?></body>
</html>

==> index.php <==
<!doctype html>
<html>
  <body align="center">
  <?php echo `cat todos` ?>
  <form action="/action.php">
    <input type="text" name="2do" value="go to gym">
    <input type="submit" value="Add">
  </form>
  </body>
</html>
```

Run the web server with: `php -S localhost:8000`
