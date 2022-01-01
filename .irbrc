require 'interactive_editor'
require 'colorize'

IRB.conf[:IRB_NAME] = "\033[1;31m#{ENV["ENV"]||ENV["RAILS_ENV"]||'ruby'}\033[0m"

IRB.conf[:PROMPT][:MASTER] = {
  AUTO_INDENT: true,
  PROMPT_I: '%N.%m{ ',
  PROMPT_S: '%N.%m{ ',
  PROMPT_C: '%N.$m{ ',
  RETURN: "  ∟>> %s\n"
}

# Add Quit Control
module Kernel
  def q
    exit
  end
end

IRB.conf[:PROMPT_MODE] = :MASTER
IRB.conf[:SAVE_HISTORY] = 10_000
