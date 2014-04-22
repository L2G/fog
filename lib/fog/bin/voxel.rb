class Voxel < Fog::Bin
  class << self

    def class_for(key)
      case key
      when :compute
        Fog::Compute::Voxel
      else
        raise ArgumentError, t.bin.error.unrecognized_service(key)
      end
    end

    def [](service)
      @@connections ||= Hash.new do |hash, key|
        hash[key] = case key
        when :compute
          Fog::Logger.warning(t.bin.warning.portability('Voxel[:compute]', 'Compute[:voxel]'))
          Fog::Compute.new(:provider => 'Voxel')
        else
          raise ArgumentError, t.bin.error.unrecognized_service(key.inspect)
        end
      end
      @@connections[service]
    end

    def services
      Fog::Voxel.services
    end

  end
end
