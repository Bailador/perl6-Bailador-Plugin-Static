# NAME

Bailador::Plugin::Static - automatically serve static files

# SYNOPSIS

```perl6
use Bailador;
use Bailador::Plugin::Static;

```

# DESCRIPTION

This module sets up a route to automatically serve static
files from `/assets/*` URL, where the file will served
from the `assets/` directory relative to the current
working directory.

The content type will be automatically detected from
file's extension.

# ENABLING THE FUNCTIONALITY

```perl6
use Bailador::Plugin::Static;
```

Simply `use` the module to enable the functionality.

----

# REPOSITORY

Fork this module on GitHub:
https://github.com/zoffixznet/perl6-Bailador-Plugin-Static

# BUGS

To report bugs or request features, please use
https://github.com/zoffixznet/perl6-Bailador-Plugin-Static/issues

# AUTHOR

Zoffix Znet (http://zoffix.com/)

# LICENSE

You can use and distribute this module under the terms of the
The Artistic License 2.0. See the `LICENSE` file included in this
distribution for complete details.
