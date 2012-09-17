dot_vim
=======

= Working with NERD_tree

Installing NERD_tree involved cloning the git respository, found at https://github.com/scrooloose/nerdtree, (clone it directly into the bundles directory, though it is there now), then running ':helptags .'.  The trailing dot is needed because helptags needs an argument of the directory in which to search for building the new help tags.  Having done that, it was then possible to run ':help NERD_tree.txt'

To open up the tree, use ':NERDtree <start_directory>'.  You can use the cursor keys or the regular vim navigation commands to get around the tree, using "Enter" to open and close directories and to open files into a new buffer.  From the buffer, to get back to the NERDtree use "Cntl-W h", just like navigating any other vim window

