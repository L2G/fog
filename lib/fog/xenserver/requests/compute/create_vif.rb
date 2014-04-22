module Fog
  module Compute
    class XenServer

      class Real

        def create_vif( vm_ref, network_ref, device = -1)
          raise ArgumentError.new('Invalid vm_ref') if vm_ref.nil?
          raise ArgumentError.new('Invalid network_ref') if network_ref.nil?
          vm_ref = vm_ref.reference if vm_ref.kind_of? Fog::Model
          network_ref = network_ref.reference if network_ref.kind_of? Fog::Model
          vif_config = default_vif_config(vm_ref, network_ref, device.to_s)
          @connection.request({ :parser => Fog::Parsers::XenServer::Base.new, :method => 'VIF.create' }, vif_config )
        end

        def create_vif_custom( conf )
          raise ArgumentError.new('VIF config is not a Hash') if not conf.kind_of?(Hash)
          @connection.request({ :parser => Fog::Parsers::XenServer::Base.new, :method => 'VIF.create' }, conf )
        end

        def default_vif_config( vm_ref, network_ref, device_number = '-1' )
          conf = {
            'MAC_autogenerated'    => 'True',
            'VM'                   => vm_ref,
            'network'              => network_ref,
            'MAC'                  => '',
            'MTU'                  => '0',
            'other_config'         => {},
            'qos_algorithm_type'   => 'ratelimit',
            'qos_algorithm_params' => {}
          }
          if device_number.to_i >= 0
            conf['device'] = device_number
          else
            highest_dev = 0
            server = servers.get vm_ref
            server.vifs.each do |vif|
              dev = vif.device.to_i
              highest_dev = dev if dev > highest_dev
            end
            conf['device'] = (highest_dev + 1).to_s
          end
          conf
        end
      end

      class Mock

        def create_vif( vm_ref, network_ref )
          Fog::Mock.not_implemented
        end

      end

    end
  end
end
