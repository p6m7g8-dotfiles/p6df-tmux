# tmuxcheck tmux=bash
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

  brew install screen
  brew install tmux

  p6_return_void
}

######################################################################
#<
#
# Function: code rc = p6_tmux_cmd(cmd, ...)
#
#  Args:
#	cmd -
#	... - 
#
#  Returns:
#	code - rc
#
#>
######################################################################
p6_tmux_cmd() {
  local cmd="$1"
  shift 1

  local log_type
  case $cmd in
  *) log_type=p6_run_write_cmd ;;
  esac

  p6_run_code "$log_type tmux $cmd $*"
  local rc=$?

  p6_return_code_as_code "$rc"
}

######################################################################
#<
#
# Function: p6df::modules::tmux::new(session, cmd)
#
#  Args:
#	session -
#	cmd -
#
#>
######################################################################
p6df::modules::tmux::new() {
  local session="$1"
  local cmd="$2"

  p6_tmux_cmd "new -s \"$session\" $cmd"
}

######################################################################
#<
#
# Function: p6df::modules::tmux::attach(session)
#
#  Args:
#	session -
#
#>
######################################################################
p6df::modules::tmux::attach() {
  local session="$1"

  p6_tmux_cmd "attach -d -t \"$session\""
}

######################################################################
#<
#
# Function: p6df::modules::tmux::make(session, cmd)
#
#  Args:
#	session -
#	cmd -
#
#>
######################################################################
p6df::modules::tmux::make() {
  local session="$1"
  local cmd="$2"

  p6df::modules::tmux::attach "$session" ||
    p6df::modules::tmux::new "$session" "$cmd"
}
