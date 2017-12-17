# straddin

Peek at objects with a keystroke.

As much as I like RStudio's Environment pane, sometimes I want to see the
structure of objects not yet created, or intermediate objects in a pipe-chain,
or perhaps the structure of a large object.

1. install package and restart RStudio

    ```r
    remotes::install_github('famuvie/straddin')
    ```

2. Define some key-binding for straddin

    RStudio menu: `Tools:Addins:Browse Addins:Keyboard shorcuts...`.

    I use Alt+Shift+S(0, 1, M) for structure, structure at level 0 or 1 and summary respectively.

2. highlight something

3. print structure

## Example

```r
tidyr::gather(mtcars, variable, value)
```
Highlighting the previous line and pressing Alt+Shift+S executes the following

```r
str(tidyr::gather(mtcars, variable, value))
```