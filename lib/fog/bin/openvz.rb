class Openvz < Fog::Bin
  class << self

    def class_for(key)
      case key
      when :compute
        Fog::Compute::Openvz
      else
        raise ArgumentError, "Unsupported #{self} service: #{key}"
      end
    end

    def [](service)
      @@connections ||= Hash.new do |hash, key|
        hash[key] = case key
        when :compute
          Fog::Logger.warning(t.bin.warning.portability('Openvz[:compute]', 'Compute[:openvz]'))
          Fog::Compute.new(:provider => 'Openvz')
        else
          raise ArgumentError, t.bin.error.unrecognized_service(key.inspect)
        end
      end
      @@connections[service]
    end

    def services
      Fog::Openvz.services
    end

  end
end
