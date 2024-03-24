# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::tmux::session::new(session, cmd)
#
#  Args:
#	session -
#	cmd -
#
#>
######################################################################
p6df::modules::tmux::session::new() {
  local session="$1"
  local cmd="$2"

  p6df::modules::tmux::cmd new -s "$session" "$cmd"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::tmux::session::attach(session)
#
#  Args:
#	session -
#
#>
######################################################################
p6df::modules::tmux::session::attach() {
  local session="$1"

  p6df::modules::tmux::cmd attach -d -t "$session"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::tmux::session::make(session, cmd)
#
#  Args:
#	session -
#	cmd -
#
#>
######################################################################
p6df::modules::tmux::session::make() {
  local session="$1"
  local cmd="$2"

  p6df::modules::tmux::attach "$session" ||
    p6df::modules::tmux::new "$session" "$cmd"

  p6_return_void
}
