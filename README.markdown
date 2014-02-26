# nvm-global

**nvm-global** allows you to use nvm in production-like scenarios by
installing it globally. nvm-global has been tested working on both Travis-CI and
Jenkins, as well. Standard nvm has known difficulties working in multi-user or
rooted environments.


Installation is the same as with standard nvm: <https://github.com/creationix/nvm>.
The only difference is that it's you'll need to assert your root privileges with
`sudo`, e.g.

    wget -qO- https://raw.github.com/royriojas/nvm/master/install.sh | sudo bash

This will install into `/usr/local/nvm`
