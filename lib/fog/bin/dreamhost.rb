class Dreamhost < Fog::Bin
  class << self

    def class_for(key)
      case key
      when :dns
        Fog::DNS::Dreamhost
      else
        raise ArgumentError, t.bin.error.unrecognized_service(key)
      end
    end

    def [](service)
      @@connections ||= Hash.new do |hash, key|
        hash[key] = case key
        when :dns
          Fog::Logger.warning(t.bin.warning.portability('Dreamhost[:dns]', 'DNS[:dreamhost]'))
          Fog::DNS.new(:provider => 'Dreamhost')
        else
          raise ArgumentError, t.bin.error.unrecognized_service(key.inspect)
        end
      end
      @@connections[service]
    end

    def services
      Fog::Dreamhost.services
    end

  end
end
