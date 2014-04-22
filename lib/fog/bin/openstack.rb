class OpenStack < Fog::Bin
  class << self

    def class_for(key)
      case key
      when :compute
        Fog::Compute::OpenStack
      when :identity
        Fog::Identity::OpenStack
      when :image
        Fog::Image::OpenStack
      when :network
        Fog::Network::OpenStack
      when :storage
        Fog::Storage::OpenStack
      when :volume
        Fog::Volume::OpenStack
      when :metering
        Fog::Metering::OpenStack
      when :orchestration
        Fog::Orchestration::OpenStack
      else
        raise ArgumentError, t.bin.error.unrecognized_service(key)
      end
    end

    def [](service)
      @@connections ||= Hash.new do |hash, key|
        hash[key] = case key
        when :compute
          Fog::Logger.warning(t.bin.warning.portability('OpenStack[:compute]', 'Compute[:openstack]'))
          Fog::Compute.new(:provider => 'OpenStack')
        when :identity
          Fog::Logger.warning(t.bin.warning.portability('OpenStack[:identity]', 'Identity[:openstack]'))
          Fog::Identity.new(:provider => 'OpenStack')
        when :image
          Fog::Logger.warning(t.bin.warning.portability('OpenStack[:image]', 'Image[:openstack]'))
          Fog::Image.new(:provider => 'OpenStack')
        when :network
          Fog::Logger.warning(t.bin.warning.portability('OpenStack[:network]', 'Network[:openstack]'))
          Fog::Network.new(:provider => 'OpenStack')
        when :storage
          Fog::Logger.warning(t.bin.warning.portability('OpenStack[:storage]', 'Storage[:openstack]'))
          Fog::Storage.new(:provider => 'OpenStack')
        when :volume
          Fog::Logger.warning(t.bin.warning.portability('OpenStack[:volume]', 'Volume[:openstack]'))
          Fog::Volume.new(:provider => 'OpenStack')
        when :metering
          Fog::Logger.warning(t.bin.warning.portability('OpenStack[:metering]', 'Metering[:openstack]'))
          Fog::Metering.new(:provider => 'OpenStack')
        when :orchestration
          Fog::Logger.warning(t.bin.warning.portability('OpenStack[:orchestration]', 'Orchestration[:openstack]'))
          Fog::Orchestration.new(:provider => 'OpenStack')
        else
          raise ArgumentError, t.bin.error.unrecognized_service(key.inspect)
        end
      end
      @@connections[service]
    end

    def services
      Fog::OpenStack.services
    end

  end
end
