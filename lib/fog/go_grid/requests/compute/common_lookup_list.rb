module Fog
  module Compute
    class GoGrid
      class Real

        # List options and lookups
        #
        # ==== Parameters
        # * 'lookup'<~String> - the lookup to be listed
        # * options<~Hash>:
        #   * 'sort'<~String> - column to sort result by in ['description', 'id', 'name']
        #   * 'asc'<~String>  - order to sort in ['true','false']
        #
        # ==== Returns
        # * response<~Excon::Response>:
        #   * body<~Array>:
        # TODO: docs
        def common_lookup_list(lookup, options = {})
          request(
            :path     => 'common/lookup/list',
            :query    => {'lookup' => lookup}.merge!(options)
          )
        end

      end
    end
  end
end
