# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::tmux::deps()
#
#>
######################################################################
p6df::modules::tmux::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6common
    samoshkin/tmux-config
  )
}

######################################################################
#<
#
# Function: p6df::modules::tmux::external::brew()
#
#>
######################################################################
p6df::modules::tmux::external::brew() {

  p6df::modules::homebrew::cli::brew::install screen
  p6df::modules::homebrew::cli::brew::install tmux

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::tmux::init(_module, dir)
#
#  Args:
#	_module -
#	dir -
#
#>
######################################################################
p6df::modules::tmux::init() {
  local _module="$1"
  local dir="$2"

  p6_bootstrap "$dir"

  p6_return_void
}
