module Tmuxinator
  class Analytics < Thor
    desc "prompt", "prompt for permission."
    def prompt
      question = "Are you willing to share data about your environment (Tmux version, Tmuxinator version, OS, OS version) with the Tmuxinator organization?"
      if yes?(question, :red)
        puts "HOORAY!"
      else
        puts "BOO!"
      end
    end
  end
  Analytics.new.prompt
end
