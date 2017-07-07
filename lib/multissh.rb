require "multissh/version"
require 'sshkit'
require 'sshkit/dsl'
include SSHKit::DSL
require 'pretty_host'

module Multissh
  def self.run!
    
    command = ARGV.join(' ')
    
    servers = []
    begin
     servers = STDIN.read_nonblock(4096).split(/[\s,]+/).map {|s| s.strip }
    rescue IO::EAGAINWaitReadable => e
      
    end

    unless(servers.size > 0)
      puts "Provide at least one hostname on stdin"
    end

    unless(command.strip.size > 0)
      puts "Provide a command to run as argument"
    end

    SSHKit.config.output_verbosity = Logger::DEBUG
    SSHKit.config.use_format :prettyhost

    on servers do |host|
      execute(command)
    end
  end
end
