# P6's POSIX.2: p6df-tmux

## Table of Contents

- [Badges](#badges)
- [Summary](#summary)
- [Contributing](#contributing)
- [Code of Conduct](#code-of-conduct)
- [Usage](#usage)
  - [Functions](#functions)
- [Hierarchy](#hierarchy)
- [Author](#author)

## Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)

## Summary

TODO: Add a short summary of this module.

## Contributing

- [How to Contribute](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CONTRIBUTING.md>)

## Code of Conduct

- [Code of Conduct](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CODE_OF_CONDUCT.md>)

## Usage

### Functions

#### p6df-tmux

##### p6df-tmux/init.zsh

- `p6df::modules::tmux::deps()`
- `p6df::modules::tmux::external::brew()`
- `p6df::modules::tmux::init(_module, dir)`
  - Args:
    - _module - 
    - dir - 

#### p6df-tmux/lib

##### p6df-tmux/lib/cmd.sh

- `p6df::modules::tmux::cmd(...)`
  - Args:
    - ... - 

##### p6df-tmux/lib/session.sh

- `p6df::modules::tmux::session::attach(session)`
  - Args:
    - session - 
- `p6df::modules::tmux::session::make(session, cmd)`
  - Args:
    - session - 
    - cmd - 
- `p6df::modules::tmux::session::new(session, cmd)`
  - Args:
    - session - 
    - cmd - 

## Hierarchy

```text
.
├── init.zsh
├── lib
│   ├── cmd.sh
│   └── session.sh
├── README.md
└── share

3 directories, 4 files
```

## Author

Philip M. Gollucci <pgollucci@p6m7g8.com>
