class Linode < Fog::Bin
  class << self

    def class_for(key)
      case key
      when :compute
        Fog::Compute::Linode
      when :dns
        Fog::DNS::Linode
      else
        raise ArgumentError, "Unsupported #{self} service: #{key}"
      end
    end

    def [](service)
      @@connections ||= Hash.new do |hash, key|
        hash[key] = case key
        when :compute
          Fog::Logger.warning(t.bin.warning.portability('Linode[:compute]', 'Compute[:linode]'))
          Fog::Compute.new(:provider => 'Linode')
        when :dns
          Fog::Logger.warning(t.bin.warning.portability('Linode[:dns]', 'DNS[:linode]'))
          Fog::DNS.new(:provider => 'Linode')
        else
          raise ArgumentError, t.bin.error.unrecognized_service(key.inspect)
        end
      end
      @@connections[service]
    end

    def services
      Fog::Linode.services
    end

  end
end
