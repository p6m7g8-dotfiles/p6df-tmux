# shellcheck shell=bash
######################################################################
p6df::modules::tmux::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6common
    samoshkin/tmux-config
    obra/superpowers-lab
  )
}

######################################################################
p6df::modules::tmux::home::symlinks() {

  p6_file_symlink "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-tmux/share/.tmux.conf" "$HOME/.tmux.conf"

  p6_return_void
}

######################################################################
p6df::modules::tmux::external::brews() {

  p6df::core::homebrew::cli::brew::install screen
  p6df::core::homebrew::cli::brew::install tmux

  p6_return_void
}

######################################################################
p6df::modules::tmux::mcp() {

  p6_js_npm_global_install "tmux-mcp"

  p6df::modules::anthropic::mcp::server::add "tmux" "npx" "-y" "tmux-mcp"
  p6df::modules::openai::mcp::server::add "tmux" "npx" "-y" "tmux-mcp"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::tmux::deps()
#
#>
######################################################################
#<
#
# Function: p6df::modules::tmux::external::brews()
#
#>
######################################################################
#<
#
# Function: p6df::modules::tmux::home::symlinks()
#
#  Environment:	 HOME P6_DFZ_SRC_P6M7G8_DOTFILES_DIR
#>
######################################################################
#<
#
# Function: p6df::modules::tmux::mcp()
#
#>
######################################################################
#<
#
# Function: words tmux $TMUX = p6df::modules::tmux::prompt::system()
#
#  Returns:
#	words - tmux $TMUX
#
#  Environment:	 TMUX
#>
######################################################################
p6df::modules::tmux::prompt::system() {

  p6_return_words 'tmux' '$TMUX'
}

