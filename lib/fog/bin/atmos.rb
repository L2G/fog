class Atmos < Fog::Bin
  class << self

    def class_for(key)
      case key
      when :storage
        Fog::Storage::Atmos
      else
        raise ArgumentError, t.bin.error.unsupported_service(self, key)
      end
    end

    def [](service)
      @@connections ||= Hash.new do |hash, key|
        hash[key] = case key
        when :storage
          Fog::Logger.warning(t.bin.warning.portability('Atmos[:storage]', 'Storage[:atmos]'))
          Fog::Storage.new(:provider => 'Atmos')
        else
          raise ArgumentError, t.error.unrecognized_service(service)
        end
      end
      @@connections[service]
    end

    def services
      Fog::Atmos.services
    end

  end
end
