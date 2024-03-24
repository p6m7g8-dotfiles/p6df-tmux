# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::tmux::cmd(...)
#
#  Args:
#	... - 
#
#>
######################################################################
p6df::modules::tmux::cmd() {
  shift 0

  tmux "$@"

  p6_return_void
}
