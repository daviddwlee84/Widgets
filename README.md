# David's Widgets

Tools and Scripts that brings automation and convenience into life.

## Quick Setup

1. Clone this repository.
2. Run `./make_global_app.sh`. This will bring all the "proper to be global command" apps into the same folder.
3. Make sure that folder is in `$PATH` and you're ready to go!

## Widgets

| Widget                     | Function     | Usage                | Remark |
| -------------------------- | ------------ | -------------------- | ------ |
| [`zhihu`](Python/zhihu.py) | Search zhihu | `$ zhihu [keywords]` | (1.)   |

* Usage
* Remark
  1. Can be replaced by add [`web_search`](#oh-my-zsh-websearch-plugin) alias

## Collections

* YAML reader for bash script
  * [Read YAML file from Bash script](https://gist.github.com/pkuczynski/8665367)
  * [jasperes/bash-yaml: Read a yaml file and create variables in bash](https://github.com/jasperes/bash-yaml)

### Oh My Zsh `web_search` plugin

* [web-search.plugin.zsh](https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/web-search/web-search.plugin.zsh)
* Usage: `$ web_search [website] [keywords]`
* Better just add alias like `alias google='web_search google'` in `~/.oh-my-zsh/plugins/web-search/web-search.plugin.zsh`

## Useful Libraries

* [PyGithub/PyGithub: Typed interactions with the GitHub API v3](https://github.com/PyGithub/PyGithub)

## Ideas

### Others

* [Super quick Python automation ideas - YouTube](https://www.youtube.com/watch?v=qbW6FRbaSl0)
