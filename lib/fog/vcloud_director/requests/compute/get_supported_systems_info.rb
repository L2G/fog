module Fog
  module Compute
    class VcloudDirector
      class Real
        # List operating systems available for use on virtual machines owned by
        # this organization.
        #
        # @return [Excon::Response]
        #   * body<~Hash>:
        #
        # @see http://pubs.vmware.com/vcd-51/topic/com.vmware.vcloud.api.reference.doc_51/doc/operations/GET-SupportedSystemsInfo.html
        # @since vCloud API version 5.1
        def get_supported_systems_info
          request(
            :expects    => 200,
            :idempotent => true,
            :method     => 'GET',
            :parser     => Fog::ToHashDocument.new,
            :path       => 'supportedSystemsInfo'
          )
        end
      end

      class Mock
        def get_supported_systems_info
          body = # this is a subset of the full list
            { :xmlns => xmlns,
             :xmlns_xsi => xmlns_xsi,
             :type => 'application/vnd.vmware.vcloud.supportedSystemsInfo+xml',
             :href => make_href('supportedSystemsInfo/'),
             :xsi_schemaLocation => xsi_schema_location,
             :OperatingSystemFamilyInfo =>
              [{ :Name => 'Microsoft Windows',
                :OperatingSystemFamilyId => '1',
                :OperatingSystem =>
                 [{ :OperatingSystemId => '85',
                   :DefaultHardDiskAdapterType => '4',
                   :MinimumHardDiskSizeGigabytes => '40',
                   :MinimumMemoryMegabytes => '512',
                   :Name => 'Microsoft Windows Server 2012 (64-bit)',
                   :InternalName => 'windows8Server64Guest',
                   :Supported => 'true',
                   :x64 => 'true',
                   :MaximumCpuCount => '64',
                   :MinimumHardwareVersion => '8',
                   :PersonalizationEnabled => 'true',
                   :PersonalizationAuto => 'true',
                   :SysprepPackagingSupported => 'true',
                   :SupportsMemHotAdd => 'true',
                   :cimOsId => '74',
                   :CimVersion => '0',
                   :SupportedForCreate => 'true' },
                  { :OperatingSystemId => '3',
                   :DefaultHardDiskAdapterType => '4',
                   :MinimumHardDiskSizeGigabytes => '40',
                   :MinimumMemoryMegabytes => '512',
                   :Name => 'Microsoft Windows Server 2008 R2 (64-bit)',
                   :InternalName => 'windows7Server64Guest',
                   :Supported => 'true',
                   :x64 => 'true',
                   :MaximumCpuCount => '64',
                   :MinimumHardwareVersion => '4',
                   :PersonalizationEnabled => 'true',
                   :PersonalizationAuto => 'true',
                   :SysprepPackagingSupported => 'true',
                   :SupportsMemHotAdd => 'true',
                   :cimOsId => '102',
                   :CimVersion => '0',
                   :SupportedForCreate => 'true' },
                  { :OperatingSystemId => '4',
                   :DefaultHardDiskAdapterType => '4',
                   :MinimumHardDiskSizeGigabytes => '40',
                   :MinimumMemoryMegabytes => '512',
                   :Name => 'Microsoft Windows Server 2008 (32-bit)',
                   :InternalName => 'winLonghornGuest',
                   :Supported => 'true',
                   :x64 => 'false',
                   :MaximumCpuCount => '64',
                   :MinimumHardwareVersion => '4',
                   :PersonalizationEnabled => 'true',
                   :PersonalizationAuto => 'true',
                   :SysprepPackagingSupported => 'true',
                   :SupportsMemHotAdd => 'true',
                   :cimOsId => '73',
                   :CimVersion => '0',
                   :SupportedForCreate => 'true' }] },
               { :Name => 'Linux',
                :OperatingSystemFamilyId => '2',
                :OperatingSystem =>
                 [{ :OperatingSystemId => '48',
                   :DefaultHardDiskAdapterType => '3',
                   :MinimumHardDiskSizeGigabytes => '8',
                   :MinimumMemoryMegabytes => '64',
                   :Name => 'Ubuntu Linux (64-bit)',
                   :InternalName => 'ubuntu64Guest',
                   :Supported => 'true',
                   :x64 => 'true',
                   :MaximumCpuCount => '64',
                   :MinimumHardwareVersion => '4',
                   :PersonalizationEnabled => 'true',
                   :PersonalizationAuto => 'true',
                   :SysprepPackagingSupported => 'false',
                   :SupportsMemHotAdd => 'true',
                   :cimOsId => '94',
                   :CimVersion => '0',
                   :SupportedForCreate => 'true' },
                  { :OperatingSystemId => '47',
                   :DefaultHardDiskAdapterType => '3',
                   :MinimumHardDiskSizeGigabytes => '8',
                   :MinimumMemoryMegabytes => '64',
                   :Name => 'Ubuntu Linux (32-bit)',
                   :InternalName => 'ubuntuGuest',
                   :Supported => 'true',
                   :x64 => 'false',
                   :MaximumCpuCount => '64',
                   :MinimumHardwareVersion => '4',
                   :PersonalizationEnabled => 'true',
                   :PersonalizationAuto => 'true',
                   :SysprepPackagingSupported => 'false',
                   :SupportsMemHotAdd => 'true',
                   :cimOsId => '93',
                   :CimVersion => '0',
                   :SupportedForCreate => 'true' },
                  { :OperatingSystemId => '50',
                   :DefaultHardDiskAdapterType => '3',
                   :MinimumHardDiskSizeGigabytes => '8',
                   :MinimumMemoryMegabytes => '32',
                   :Name => 'Other 2.6.x Linux (64-bit)',
                   :InternalName => 'other26xLinux64Guest',
                   :Supported => 'true',
                   :x64 => 'true',
                   :MaximumCpuCount => '64',
                   :MinimumHardwareVersion => '7',
                   :PersonalizationEnabled => 'true',
                   :PersonalizationAuto => 'true',
                   :SysprepPackagingSupported => 'false',
                   :SupportsMemHotAdd => 'true',
                   :cimOsId => '100',
                   :CimVersion => '0',
                   :SupportedForCreate => 'true' },
                  { :OperatingSystemId => '49',
                   :DefaultHardDiskAdapterType => '3',
                   :MinimumHardDiskSizeGigabytes => '8',
                   :MinimumMemoryMegabytes => '32',
                   :Name => 'Other 2.6.x Linux (32-bit)',
                   :InternalName => 'other26xLinuxGuest',
                   :Supported => 'true',
                   :x64 => 'false',
                   :MaximumCpuCount => '64',
                   :MinimumHardwareVersion => '7',
                   :PersonalizationEnabled => 'true',
                   :PersonalizationAuto => 'true',
                   :SysprepPackagingSupported => 'false',
                   :SupportsMemHotAdd => 'true',
                   :cimOsId => '99',
                   :CimVersion => '0',
                   :SupportedForCreate => 'true' },
                  { :OperatingSystemId => '54',
                   :DefaultHardDiskAdapterType => '3',
                   :MinimumHardDiskSizeGigabytes => '8',
                   :MinimumMemoryMegabytes => '32',
                   :Name => 'Other Linux (64-bit)',
                   :InternalName => 'otherLinux64Guest',
                   :Supported => 'true',
                   :x64 => 'true',
                   :MaximumCpuCount => '64',
                   :MinimumHardwareVersion => '4',
                   :PersonalizationEnabled => 'true',
                   :PersonalizationAuto => 'true',
                   :SysprepPackagingSupported => 'false',
                   :SupportsMemHotAdd => 'false',
                   :cimOsId => '101',
                   :CimVersion => '0',
                   :SupportedForCreate => 'true' },
                  { :OperatingSystemId => '53',
                   :DefaultHardDiskAdapterType => '3',
                   :MinimumHardDiskSizeGigabytes => '8',
                   :MinimumMemoryMegabytes => '32',
                   :Name => 'Other Linux (32-bit)',
                   :InternalName => 'otherLinuxGuest',
                   :Supported => 'true',
                   :x64 => 'false',
                   :MaximumCpuCount => '64',
                   :MinimumHardwareVersion => '4',
                   :PersonalizationEnabled => 'true',
                   :PersonalizationAuto => 'true',
                   :SysprepPackagingSupported => 'false',
                   :SupportsMemHotAdd => 'false',
                   :cimOsId => '36',
                   :CimVersion => '0',
                   :SupportedForCreate => 'true' }] },
               { :Name => 'Other',
                :OperatingSystemFamilyId => '3',
                :OperatingSystem =>
                 [{ :OperatingSystemId => '68',
                   :DefaultHardDiskAdapterType => '3',
                   :MinimumHardDiskSizeGigabytes => '8',
                   :MinimumMemoryMegabytes => '32',
                   :Name => 'Other (64-bit)',
                   :InternalName => 'otherGuest64',
                   :Supported => 'true',
                   :x64 => 'true',
                   :MaximumCpuCount => '64',
                   :MinimumHardwareVersion => '4',
                   :PersonalizationEnabled => 'false',
                   :PersonalizationAuto => 'false',
                   :SysprepPackagingSupported => 'false',
                   :SupportsMemHotAdd => 'true',
                   :cimOsId => '102',
                   :CimVersion => '0',
                   :SupportedForCreate => 'true' },
                  { :OperatingSystemId => '67',
                   :DefaultHardDiskAdapterType => '3',
                   :MinimumHardDiskSizeGigabytes => '8',
                   :MinimumMemoryMegabytes => '32',
                   :Name => 'Other (32-bit)',
                   :InternalName => 'otherGuest',
                   :Supported => 'true',
                   :x64 => 'false',
                   :MaximumCpuCount => '64',
                   :MinimumHardwareVersion => '4',
                   :PersonalizationEnabled => 'false',
                   :PersonalizationAuto => 'false',
                   :SysprepPackagingSupported => 'false',
                   :SupportsMemHotAdd => 'true',
                   :cimOsId => '1',
                   :CimVersion => '0',
                   :SupportedForCreate => 'true' }] }] }

          Excon::Response.new(
            :status => 200,
            :headers => { 'Content-Type' => "#{body[:type]};version=#{api_version}" },
            :body => body
          )
        end
      end
    end
  end
end
