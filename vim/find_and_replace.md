# Find and Replace
---

Vim provides **:s** (substitute) command for search and replace.
All the contents copy from [Vim Tips Wiki](https://vim.fandom.com/wiki/Search_and_replace)
Another referance is [Linx Hint](https://linuxhint.com/vim_search_replace/#:~:text=Follow%20the%20below%20simple%20steps%20to%20search%20and,back%20to%20normal%20mode.%20...%20More%20items...%20)

---

## Basic Search and Replace

> **:s/foo/bar/g**  
Find each occurance of 'foo' (**in the current line only**) and replace it with 'bar'

> **:%s/foo/bar/g**    
Find each occurance of 'foo' (**in all lines**) and replace it with 'bar'

> **:%s/foo/bar/gc**    
Change each 'foo' to 'bar' but ask for conformation first

> **:%s/\<foo\>/bar/gc**    
Change only the whole words exactly matching 'foo' to 'bar'; ask for conformation   
(example: match 'foo' but not 'fool', 'lafoo', 'food'...)

> **:%s/foo/bar/gci**   
case insensitive due to the **i** flag
> **:%s/foo\c/bar/gc**  
case insensitive because **\c** make the search case insensitive

> **:%s/foo/bar/gcI**   
case sensitive due to the **I** flag
> **:%s/foo\C/bar/gc**  
case sensitive because **\C** make the search case insensitive

---
The **g** flags means ***global*** - each occurrence in the line is changed,
    rather than just the first.     
        
When using the **c** flags, you need to confirm each match what you do.     
Vim will output something like:
> **replace with foobar (y/n/a/q/l/^E/^Y)?**    
***y***: substitute this match  
***n***: skip this match
***a***: substitute this and all remaining matches ("**a**ll" remaining matches)
***q***: quit the command
***l***: substitute this match and quit (think of "**l**ast")
***^E***: Ctrl + E -- scroll screen up
***^Y***: Ctrl + Y -- scroll screen down

## Advanced

### Search Range
> **:s/foo/bar/g**  
***g*** flag for the current line

> **:%s/foo/bar/g**     
***%*** flag for the all lines

> **:5,12s/foo/bar/g**      
***[start_line],[end_line]*** from start line to end line (inclusive)
    - current line(.) 
    - the last line($)
    - the [n] next line(+n)

> **:g/^baz/s/foo/bar/g**   
***g/^baz/*** flag for each line started with baz

