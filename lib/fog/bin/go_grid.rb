class GoGrid < Fog::Bin
  class << self

    def class_for(key)
      case key
      when :compute
        Fog::Compute::GoGrid
      else
        raise ArgumentError, "Unsupported #{self} service: #{key}"
      end
    end

    def [](service)
      @@connections ||= Hash.new do |hash, key|
        hash[key] = case key
        when :compute
          Fog::Logger.warning(t.bin.warning.portability('GoGrid[:compute]', 'Compute[:gogrid]'))
          Fog::Compute.new(:provider => 'GoGrid')
        else
          raise ArgumentError, t.bin.error.unrecognized_service(key.inspect)
        end
      end
      @@connections[service]
    end

    def services
      Fog::GoGrid.services
    end

  end
end
