actions :build, :install, :rebuild, :upgrade
default_action :build

attribute :source, :kind_of => [String], :regex => /(ftp|git|https?):\/\/[^\/]+\/.*/
attribute :source_type, :kind_of => [String, Symbol], :equal_to => ["git", "tarball", :git, :tarball], :required => true
attribute :creates, :kind_of => [String, Array], :required => true
attribute :checksum, :kind_of => [String], :regex => /[0-9a-fA-F]{64}/, :default => nil
attribute :ref, :kind_of => String, :default => nil #revision
attribute :build_command, :default => "make install", :kind_of => String
attribute :environment, :default => {}, :kind_of => Hash

attribute :installed, :default => false, :kind_of => [TrueClass, FalseClass] # used internally by providers
