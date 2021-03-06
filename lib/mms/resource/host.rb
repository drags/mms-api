module MMS

  class Resource::Host < Resource

    attr_accessor :name
    attr_accessor :group
    attr_accessor :hostname
    attr_accessor :port
    attr_accessor :type_name
    attr_accessor :last_ping
    attr_accessor :ip_address
    attr_accessor :version
    attr_accessor :shard_name
    attr_accessor :replicaset_name
    attr_accessor :replica_state_name
    attr_accessor :alerts_enabled
    attr_accessor :host_enabled
    attr_accessor :profiler_enabled
    attr_accessor :logs_enabled

    def initialize(id, group_id, data = nil)
      @group = MMS::Resource::Group.new(group_id)

      super id, data
    end

    def _load(id)
      MMS::Client.instance.get '/groups/' + @group.id + '/hosts/' + id.to_s
    end

    def _from_hash(data)
      @hostname = data['hostname']
      @port = data['port']
      @type_name = data['typeName']
      @last_ping = data['lastPing']
      @ip_address = data['ipAddress']
      @version = data['version']
      @shard_name = data['shardName']
      @replicaset_name = data['replicaSetName']
      @replica_state_name = data['replicaStateName']
      @alerts_enabled = data['alertsEnabled']
      @host_enabled = data['hostEnabled']
      @profiler_enabled = data['profilerEnabled']
      @logs_enabled = data['logsEnabled']
      @name = @hostname
    end
  end
end
