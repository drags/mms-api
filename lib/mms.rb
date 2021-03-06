module MMS
  require 'rubygems'  # For ruby < 1.9

  require 'mms/agent'
  require 'mms/client'
  require 'mms/cache'
  require 'mms/version'
  require 'mms/resource'

  require 'mms/resource/group'
  require 'mms/resource/host'
  require 'mms/resource/cluster'
  require 'mms/resource/snapshot'
  require 'mms/resource/restore_job'
end
