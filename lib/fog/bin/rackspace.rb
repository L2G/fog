class Rackspace < Fog::Bin
  class << self

    def class_for(key)
      case key
      when :auto_scale
        Fog::Rackspace::AutoScale
      when :block_storage
        Fog::Rackspace::BlockStorage
      when :cdn
        Fog::CDN::Rackspace
      when :compute
        Fog::Compute::Rackspace
      when :compute_v2
        Fog::Compute::RackspaceV2
      when :storage
        Fog::Storage::Rackspace
      when :load_balancers
        Fog::Rackspace::LoadBalancers
      when :dns
        Fog::DNS::Rackspace
      when :identity
        Fog::Rackspace::Identity
      when :databases
        Fog::Rackspace::Databases
      when :monitoring
        Fog::Rackspace::Monitoring
      when :queues
        Fog::Rackspace::Queues
      else
        raise ArgumentError, t.bin.error.unrecognized_service(key)
      end
    end

    def [](service)
      @@connections ||= Hash.new do |hash, key|
        hash[key] = case key
        when :auto_scale
          Fog::Rackspace::AutoScale.new
        when :cdn
          Fog::Logger.warning(t.bin.warning.portability('Rackspace[:cdn]', 'CDN[:rackspace]'))
          Fog::CDN.new(:provider => 'Rackspace')
        when :compute
          Fog::Logger.warning(t.bin.warning.portability('Rackspace[:compute]', 'Compute[:rackspace]'))
          Fog::Compute.new(:provider => 'Rackspace')
        when :compute_v2
          Fog::Logger.warning(t.bin.warning.portability('Rackspace[:compute]', 'Compute[:rackspace]'))
          Fog::Compute.new(:provider => 'Rackspace', :version => 'v2')
        when :dns
          Fog::DNS.new(:provider => 'Rackspace')
        when :load_balancers
          Fog::Rackspace::LoadBalancers.new
        when :storage
          Fog::Logger.warning(t.bin.warning.portability('Rackspace[:storage]', 'Storage[:rackspace]'))
          Fog::Storage.new(:provider => 'Rackspace')
        when :identity
          Fog::Logger.warning(t.bin.warning.portability('Rackspace[:identity]', 'Identity[:rackspace]'))
          Fog::Identity.new(:provider => 'Rackspace')
        when :databases
          Fog::Rackspace::Databases.new
        when :block_storage
          Fog::Rackspace::BlockStorage.new
        when :monitoring
          Fog::Rackspace::Monitoring.new
        when :queues
          Fog::Rackspace::Queues.new
        else
          raise ArgumentError, t.bin.error.unrecognized_service(key.inspect)
        end
      end
      @@connections[service]
    end

    def services
      Fog::Rackspace.services
    end

  end
end
