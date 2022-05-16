# Dynamic generation of HTML images with Bash

```bash
while read x; do echo "<img src=\"$x\" width=300>"; done 
```

This is particularly useful when combined with image search:

```bash
find . -iname '*.png' | while read x; do echo "<img src=\"$x\" width=300>"; done > out.html
```

Now, you can browse the images in `out.html`

    #bash
