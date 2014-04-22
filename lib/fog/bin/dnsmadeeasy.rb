class DNSMadeEasy < Fog::Bin
  class << self

    def class_for(key)
      case key
      when :dns
        Fog::DNS::DNSMadeEasy
      else
        raise ArgumentError, t.bin.error.unrecognized_service(key)
      end
    end

    def [](service)
      @@connections ||= Hash.new do |hash, key|
        hash[key] = case key
        when :dns
          Fog::Logger.warning(t.bin.warning.portability('DNSMadeEasy[:dns]', 'DNS[:dnsmadeeasy]'))
          Fog::DNS.new(:provider => 'DNSMadeEasy')
        else
          raise ArgumentError, t.bin.error.unrecognized_service(key.inspect)
        end
      end
      @@connections[service]
    end

    def services
      Fog::DNSMadeEasy.services
    end

  end
end
