module Fog
  module Compute
    class VcloudDirector
      class Real
        # List all supported versions.
        #
        # @return [Excon::Response]
        #   * body<~Hash>:
        #
        # @see http://pubs.vmware.com/vcd-55/topic/com.vmware.vcloud.api.reference.doc_55/doc/operations/GET-SupportedVersions.html
        # @since vCloud API version 0.9
        def get_supported_versions
          @connection.request(
            :expects    => 200,
            :idempotent => true,
            :method     => 'GET',
            :parser     => Fog::ToHashDocument.new,
            :path       => "#{@path}/versions"
          )
        end
      end

      # rubocop:disable ClassLength
      class Mock

        # rubocop:disable MethodLength
        def get_supported_versions
          body =
            { :xmlns              => 'http://www.vmware.com/vcloud/versions',
              :xmlns_xsi          => xmlns_xsi,
              :xsi_schemaLocation => xsi_schema_location,
              :VersionInfo        =>
                                     [{ :Version          => '1.5',
                                        :LoginUrl         => make_href('sessions'),
                                        :MediaTypeMapping =>
                                                             [{ :MediaType       =>
                                                                                    'application/vnd.vmware.vcloud.instantiateVAppTemplateParams+xml',
                                                                :ComplexTypeName => 'InstantiateVAppTemplateParamsType',
                                                                :SchemaLocation  =>
                                                                                    "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vmwProviderVdcReferences+xml',
                    :ComplexTypeName => 'VMWProviderVdcReferencesType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.customizationSection+xml',
                    :ComplexTypeName => 'CustomizationSectionType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.prepareHostParams+xml',
                    :ComplexTypeName => 'PrepareHostParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.relocateVmParams+xml',
                    :ComplexTypeName => 'RelocateParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.org+xml',
                    :ComplexTypeName => 'OrgType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.vmwExternalNetworkReferences+xml',
                    :ComplexTypeName => 'VMWExternalNetworkReferencesType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.vcloud.networkConnectionSection+xml',
                    :ComplexTypeName => 'NetworkConnectionSectionType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.host+xml',
                    :ComplexTypeName => 'HostType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.catalogItem+xml',
                    :ComplexTypeName => 'CatalogItemType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.owner+xml',
                    :ComplexTypeName => 'OwnerType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.vdc+xml',
                    :ComplexTypeName => 'VdcType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vdc+xml',
                    :ComplexTypeName => 'AdminVdcType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.catalog+xml',
                    :ComplexTypeName => 'AdminCatalogType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.recomposeVAppParams+xml',
                    :ComplexTypeName => 'RecomposeVAppParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.importVmIntoExistingVAppParams+xml',
                    :ComplexTypeName => 'ImportVmIntoExistingVAppParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.taskExtensionRequestUpdateProgressOperationParams+xml',
                    :ComplexTypeName => 'TaskExtensionRequestUpdateProgressParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.catalog+xml',
                    :ComplexTypeName => 'CatalogType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.cloneVAppTemplateParams+xml',
                    :ComplexTypeName => 'CloneVAppTemplateParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.providervdc+xml',
                    :ComplexTypeName => 'ProviderVdcType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vmsObjectRefsList+xml',
                    :ComplexTypeName => 'VmObjectRefsListType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.undeployVAppParams+xml',
                    :ComplexTypeName => 'UndeployVAppParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vdcReferences+xml',
                    :ComplexTypeName => 'VdcReferencesType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.systemPasswordPolicySettings+xml',
                    :ComplexTypeName => 'SystemPasswordPolicySettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.vApp+xml',
                    :ComplexTypeName => 'VAppType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.taskExtensionRequest+xml',
                    :ComplexTypeName => 'TaskExtensionRequestType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vimServerNetworks+xml',
                    :ComplexTypeName => 'VimObjectRefListType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vmwprovidervdc+xml',
                    :ComplexTypeName => 'VMWProviderVdcType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.orgSettings+xml',
                    :ComplexTypeName => 'OrgSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.captureVAppParams+xml',
                    :ComplexTypeName => 'CaptureVAppParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.screenTicket+xml',
                    :ComplexTypeName => 'ScreenTicketType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.runtimeInfoSection+xml',
                    :ComplexTypeName => 'RuntimeInfoSectionType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.tasksList+xml',
                    :ComplexTypeName => 'TasksListType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.amqpSettingsTest+xml',
                    :ComplexTypeName => 'AmqpSettingsTestType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.extensionSettings+xml',
                    :ComplexTypeName => 'TaskExtensionSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.importVmAsVAppTemplateParams+xml',
                    :ComplexTypeName => 'ImportVmAsVAppTemplateParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.organizationGeneralSettings+xml',
                    :ComplexTypeName => 'OrgGeneralSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.registerVimServerParams+xml',
                    :ComplexTypeName => 'RegisterVimServerParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.network+xml',
                    :ComplexTypeName => 'OrgNetworkType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.vcloud.uploadVAppTemplateParams+xml',
                    :ComplexTypeName => 'UploadVAppTemplateParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.datastore+xml',
                    :ComplexTypeName => 'DatastoreType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.metadata+xml',
                    :ComplexTypeName => 'MetadataType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.licensingReportList+xml',
                    :ComplexTypeName => 'LicensingReportListType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vmwNetworkPool+xml',
                    :ComplexTypeName => 'VMWNetworkPoolType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.systemSettings+xml',
                    :ComplexTypeName => 'SystemSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vmwHostReferences+xml',
                    :ComplexTypeName => 'VMWHostReferencesType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.taskExtensionRequestOperationParams+xml',
                    :ComplexTypeName => 'TaskExtensionRequestOperationParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.metadata.value+xml',
                    :ComplexTypeName => 'MetadataValueType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.taskOperationList+xml',
                    :ComplexTypeName => 'TaskOperationListType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.media+xml',
                    :ComplexTypeName => 'MediaType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.productSections+xml',
                    :ComplexTypeName => 'ProductSectionListType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.amqpSettings+xml',
                    :ComplexTypeName => 'AmqpSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.vAppTemplate+xml',
                    :ComplexTypeName => 'VAppTemplateType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.deployVAppParams+xml',
                    :ComplexTypeName => 'DeployVAppParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.importVmIntoExistingVAppTemplateParams+xml',
                    :ComplexTypeName => 'ImportVmIntoExistingVAppTemplateParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.resourcePoolList+xml',
                    :ComplexTypeName => 'ResourcePoolListType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.networkConfigSection+xml',
                    :ComplexTypeName => 'NetworkConfigSectionType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.OrganizationVdcResourcePoolSet+xml',
                    :ComplexTypeName => 'OrganizationResourcePoolSetType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.organizationPasswordPolicySettings+xml',
                    :ComplexTypeName => 'OrgPasswordPolicySettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.publishCatalogParams+xml',
                    :ComplexTypeName => 'PublishCatalogParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vmwExtension+xml',
                    :ComplexTypeName => 'VMWExtensionType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.vcloud.mediaInsertOrEjectParams+xml',
                    :ComplexTypeName => 'MediaInsertOrEjectParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.vmPendingQuestion+xml',
                    :ComplexTypeName => 'VmPendingQuestionType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.notificationsSettings+xml',
                    :ComplexTypeName => 'NotificationsSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.ldapUserSettings+xml',
                    :ComplexTypeName => 'LdapUserAttributesType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.right+xml',
                    :ComplexTypeName => 'RightType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.ldapSettings+xml',
                    :ComplexTypeName => 'LdapSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.organization+xml',
                    :ComplexTypeName => 'AdminOrgType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.orgList+xml',
                    :ComplexTypeName => 'OrgListType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.vAppTemplateLeaseSettings+xml',
                    :ComplexTypeName => 'OrgVAppTemplateLeaseSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vmwVimServerReferences+xml',
                    :ComplexTypeName => 'VMWVimServerReferencesType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vmwexternalnet+xml',
                    :ComplexTypeName => 'VMWExternalNetworkType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.entity+xml',
                    :ComplexTypeName => 'EntityType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.cloneMediaParams+xml',
                    :ComplexTypeName => 'CloneMediaParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.licensingReport+xml',
                    :ComplexTypeName => 'LicensingReportType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.importMediaParams+xml',
                    :ComplexTypeName => 'ImportMediaParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.resourcePoolSetUpdateParams+xml',
                    :ComplexTypeName => 'UpdateResourcePoolSetParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.taskExtensionRequestList+xml',
                    :ComplexTypeName => 'ReferencesType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.vmPendingAnswer+xml',
                    :ComplexTypeName => 'VmQuestionAnswerType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.rasdItemsList+xml',
                    :ComplexTypeName => 'RasdItemsListType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.generalSettings+xml',
                    :ComplexTypeName => 'GeneralSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vmwNetworkPoolReferences+xml',
                    :ComplexTypeName => 'VMWNetworkPoolReferencesType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.group+xml',
                    :ComplexTypeName => 'GroupType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.controlAccess+xml',
                    :ComplexTypeName => 'ControlAccessParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.ldapGroupSettings+xml',
                    :ComplexTypeName => 'LdapGroupAttributesType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.user+xml',
                    :ComplexTypeName => 'UserType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vcloud+xml',
                    :ComplexTypeName => 'VCloudType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.uberAdminSettings+xml',
                    :ComplexTypeName => 'UberAdminSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vmwvirtualcenter+xml',
                    :ComplexTypeName => 'VimServerType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.leaseSettingsSection+xml',
                    :ComplexTypeName => 'LeaseSettingsSectionType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.composeVAppParams+xml',
                    :ComplexTypeName => 'ComposeVAppParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.organizationEmailSettings+xml',
                    :ComplexTypeName => 'OrgEmailSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.vm+xml',
                    :ComplexTypeName => 'VmType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.vmwProviderVdcResourcePoolSet+xml',
                    :ComplexTypeName => 'VMWProviderVdcResourcePoolSetType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.cloneVAppParams+xml',
                    :ComplexTypeName => 'CloneVAppParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.vcloud.guestCustomizationSection+xml',
                    :ComplexTypeName => 'GuestCustomizationSectionType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.task+xml',
                    :ComplexTypeName => 'TaskType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.session+xml',
                    :ComplexTypeName => 'SessionType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vAppLeaseSettings+xml',
                    :ComplexTypeName => 'OrgLeaseSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.importVmAsVAppParams+xml',
                    :ComplexTypeName => 'ImportVmAsVAppParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.role+xml',
                    :ComplexTypeName => 'RoleType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.rasdItem+xml',
                    :ComplexTypeName => 'RASD_Type',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.startupSection+xml',
                    :ComplexTypeName => 'StartupSection_Type',
                    :SchemaLocation  =>
                                        'http://schemas.dmtf.org/ovf/envelope/1/dsp8023_1.1.0.xsd' },
                  { :MediaType       => 'application/vnd.vmware.vcloud.virtualHardwareSection+xml',
                    :ComplexTypeName => 'VirtualHardwareSection_Type',
                    :SchemaLocation  =>
                                        'http://schemas.dmtf.org/ovf/envelope/1/dsp8023_1.1.0.xsd' },
                  { :MediaType       => 'application/vnd.vmware.vcloud.operatingSystemSection+xml',
                    :ComplexTypeName => 'OperatingSystemSection_Type',
                    :SchemaLocation  =>
                                        'http://schemas.dmtf.org/ovf/envelope/1/dsp8023_1.1.0.xsd' },
                  { :MediaType       => 'application/vnd.vmware.vcloud.networkSection+xml',
                    :ComplexTypeName => 'NetworkSection_Type',
                    :SchemaLocation  =>
                                        'http://schemas.dmtf.org/ovf/envelope/1/dsp8023_1.1.0.xsd' },
                  { :MediaType       => 'application/vnd.vmware.vcloud.vAppNetwork+xml',
                    :ComplexTypeName => 'VAppNetworkType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.network+xml',
                    :ComplexTypeName => 'NetworkType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.orgNetwork+xml',
                    :ComplexTypeName => 'OrgNetworkType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vmwexternalnet+xml',
                    :ComplexTypeName => 'VMWExternalNetworkType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" }] },
               { :Version          => '5.1',
                 :LoginUrl         => make_href('sessions'),
                 :MediaTypeMapping =>
                                      [{ :MediaType       =>
                                                             'application/vnd.vmware.vcloud.instantiateVAppTemplateParams+xml',
                                         :ComplexTypeName => 'InstantiateVAppTemplateParamsType',
                                         :SchemaLocation  =>
                                                             "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vmwprovidervdc+xml',
                    :ComplexTypeName => 'MergeParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.organizationFederationSettings+xml',
                    :ComplexTypeName => 'OrgFederationSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.emailSettings+xml',
                    :ComplexTypeName => 'EmailSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.prepareHostParams+xml',
                    :ComplexTypeName => 'PrepareHostParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.org+xml',
                    :ComplexTypeName => 'OrgType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.aclRule+xml',
                    :ComplexTypeName => 'AclRuleType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.organizationLdapSettings+xml',
                    :ComplexTypeName => 'OrgLdapSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.vcloud.networkConnectionSection+xml',
                    :ComplexTypeName => 'NetworkConnectionSectionType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.owner+xml',
                    :ComplexTypeName => 'OwnerType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vdc+xml',
                    :ComplexTypeName => 'AdminVdcType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.importVmIntoExistingVAppParams+xml',
                    :ComplexTypeName => 'ImportVmIntoExistingVAppParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.catalog+xml',
                    :ComplexTypeName => 'CatalogType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.cloneVAppTemplateParams+xml',
                    :ComplexTypeName => 'CloneVAppTemplateParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.createVdcParams+xml',
                    :ComplexTypeName => 'CreateVdcParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vmsObjectRefsList+xml',
                    :ComplexTypeName => 'VmObjectRefsListType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.undeployVAppParams+xml',
                    :ComplexTypeName => 'UndeployVAppParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.createSnapshotParams+xml',
                    :ComplexTypeName => 'CreateSnapshotParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.blockingTask+xml',
                    :ComplexTypeName => 'BlockingTaskType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vmwPvdcStorageProfile+xml',
                    :ComplexTypeName => 'VMWProviderVdcStorageProfileType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.allocatedNetworkAddress+xml',
                    :ComplexTypeName => 'AllocatedIpAddressesType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vimServerNetworks+xml',
                    :ComplexTypeName => 'VimObjectRefListType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.blockingTaskOperationParams+xml',
                    :ComplexTypeName => 'BlockingTaskOperationParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.updateProviderVdcStorageProfiles+xml',
                    :ComplexTypeName => 'UpdateProviderVdcStorageProfilesParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.bundleUploadSocket+xml',
                    :ComplexTypeName => 'BundleUploadSocketType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.gateway+xml',
                    :ComplexTypeName => 'GatewayType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.screenTicket+xml',
                    :ComplexTypeName => 'ScreenTicketType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.resourceClassAction+xml',
                    :ComplexTypeName => 'ResourceClassActionType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.event+xml',
                    :ComplexTypeName => 'EventType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.tasksList+xml',
                    :ComplexTypeName => 'TasksListType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.migrateVmParams+xml',
                    :ComplexTypeName => 'MigrateParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.diskCreateParams+xml',
                    :ComplexTypeName => 'DiskCreateParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.registerVAppParams+xml',
                    :ComplexTypeName => 'RegisterVAppParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.organizationGeneralSettings+xml',
                    :ComplexTypeName => 'OrgGeneralSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.registerVimServerParams+xml',
                    :ComplexTypeName => 'RegisterVimServerParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.datastore+xml',
                    :ComplexTypeName => 'DatastoreType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.vcloud.diskAttachOrDetachParams+xml',
                    :ComplexTypeName => 'DiskAttachOrDetachParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.updateRightsParams+xml',
                    :ComplexTypeName => 'UpdateRightsParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.metadata+xml',
                    :ComplexTypeName => 'MetadataType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vdcStorageProfile+xml',
                    :ComplexTypeName => 'AdminVdcStorageProfileType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.systemSettings+xml',
                    :ComplexTypeName => 'SystemSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vmwHostReferences+xml',
                    :ComplexTypeName => 'VMWHostReferencesType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.userEntityRights+xml',
                    :ComplexTypeName => 'UserEntityRightsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.metadata.value+xml',
                    :ComplexTypeName => 'MetadataValueType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.media+xml',
                    :ComplexTypeName => 'MediaType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.brandingSettings+xml',
                    :ComplexTypeName => 'BrandingSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.updateVdcStorageProfiles+xml',
                    :ComplexTypeName => 'UpdateVdcStorageProfilesType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.amqpSettings+xml',
                    :ComplexTypeName => 'AmqpSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.resourceClass+xml',
                    :ComplexTypeName => 'ResourceClassType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.deployVAppParams+xml',
                    :ComplexTypeName => 'DeployVAppParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.resourcePoolList+xml',
                    :ComplexTypeName => 'ResourcePoolListType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.vdcStorageProfile+xml',
                    :ComplexTypeName => 'VdcStorageProfileType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.networkConfigSection+xml',
                    :ComplexTypeName => 'NetworkConfigSectionType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.OrganizationVdcResourcePoolSet+xml',
                    :ComplexTypeName => 'OrganizationResourcePoolSetType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.createProviderVdcParams+xml',
                    :ComplexTypeName => 'VMWProviderVdcParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.publishCatalogParams+xml',
                    :ComplexTypeName => 'PublishCatalogParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vmwExtension+xml',
                    :ComplexTypeName => 'VMWExtensionType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.notificationsSettings+xml',
                    :ComplexTypeName => 'NotificationsSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.right+xml',
                    :ComplexTypeName => 'RightType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.supportedSystemsInfo+xml',
                    :ComplexTypeName => 'SupportedOperatingSystemsInfoType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vm.complianceResult+xml',
                    :ComplexTypeName => 'ComplianceResultType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.orgList+xml',
                    :ComplexTypeName => 'OrgListType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vmwVimServerReferences+xml',
                    :ComplexTypeName => 'VMWVimServerReferencesType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vmwexternalnet+xml',
                    :ComplexTypeName => 'VMWExternalNetworkType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.entity+xml',
                    :ComplexTypeName => 'EntityType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.cloneMediaParams+xml',
                    :ComplexTypeName => 'CloneMediaParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.licensingReport+xml',
                    :ComplexTypeName => 'LicensingReportType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.apiDefinition+xml',
                    :ComplexTypeName => 'ApiDefinitionType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vshieldmanager+xml',
                    :ComplexTypeName => 'ShieldManagerType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.blockingTaskList+xml',
                    :ComplexTypeName => 'ReferencesType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.vmPendingAnswer+xml',
                    :ComplexTypeName => 'VmQuestionAnswerType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.rasdItemsList+xml',
                    :ComplexTypeName => 'RasdItemsListType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.generalSettings+xml',
                    :ComplexTypeName => 'GeneralSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.group+xml',
                    :ComplexTypeName => 'GroupType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.controlAccess+xml',
                    :ComplexTypeName => 'ControlAccessParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.user+xml',
                    :ComplexTypeName => 'UserType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vmwvirtualcenter+xml',
                    :ComplexTypeName => 'VimServerType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.strandedItem+xml',
                    :ComplexTypeName => 'StrandedItemType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.leaseSettingsSection+xml',
                    :ComplexTypeName => 'LeaseSettingsSectionType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.organizationEmailSettings+xml',
                    :ComplexTypeName => 'OrgEmailSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.cloneVAppParams+xml',
                    :ComplexTypeName => 'CloneVAppParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.task+xml',
                    :ComplexTypeName => 'TaskType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vAppLeaseSettings+xml',
                    :ComplexTypeName => 'OrgLeaseSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.role+xml',
                    :ComplexTypeName => 'RoleType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vmwProviderVdcReferences+xml',
                    :ComplexTypeName => 'VMWProviderVdcReferencesType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.customizationSection+xml',
                    :ComplexTypeName => 'CustomizationSectionType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.service+xml',
                    :ComplexTypeName => 'ServiceType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.relocateVmParams+xml',
                    :ComplexTypeName => 'RelocateParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.rights+xml',
                    :ComplexTypeName => 'RightRefsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.vmwExternalNetworkReferences+xml',
                    :ComplexTypeName => 'VMWExternalNetworkReferencesType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.disk+xml',
                    :ComplexTypeName => 'DiskType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.kerberosSettings+xml',
                    :ComplexTypeName => 'KerberosSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.operationLimitsSettings+xml',
                    :ComplexTypeName => 'OrgOperationLimitsSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.host+xml',
                    :ComplexTypeName => 'HostType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.catalogItem+xml',
                    :ComplexTypeName => 'CatalogItemType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.entityReferences+xml',
                    :ComplexTypeName => 'EntityReferencesType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.vdc+xml',
                    :ComplexTypeName => 'VdcType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.catalog+xml',
                    :ComplexTypeName => 'AdminCatalogType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.recomposeVAppParams+xml',
                    :ComplexTypeName => 'RecomposeVAppParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.orgVdcNetwork+xml',
                    :ComplexTypeName => 'OrgVdcNetworkType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.providervdc+xml',
                    :ComplexTypeName => 'ProviderVdcType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.blockingTaskUpdateProgressOperationParams+xml',
                    :ComplexTypeName => 'BlockingTaskUpdateProgressParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vdcReferences+xml',
                    :ComplexTypeName => 'VdcReferencesType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.systemPasswordPolicySettings+xml',
                    :ComplexTypeName => 'SystemPasswordPolicySettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.vApp+xml',
                    :ComplexTypeName => 'VAppType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vmwprovidervdc+xml',
                    :ComplexTypeName => 'VMWProviderVdcType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.vms+xml',
                    :ComplexTypeName => 'VmsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.orgSettings+xml',
                    :ComplexTypeName => 'OrgSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.apiFilter+xml',
                    :ComplexTypeName => 'ApiFilterType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.captureVAppParams+xml',
                    :ComplexTypeName => 'CaptureVAppParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.vmCapabilitiesSection+xml',
                    :ComplexTypeName => 'VmCapabilitiesType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.runtimeInfoSection+xml',
                    :ComplexTypeName => 'RuntimeInfoSectionType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.amqpSettingsTest+xml',
                    :ComplexTypeName => 'AmqpSettingsTestType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.importVmAsVAppTemplateParams+xml',
                    :ComplexTypeName => 'ImportVmAsVAppTemplateParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.guestPersonalizationSettings+xml',
                    :ComplexTypeName => 'OrgGuestPersonalizationSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.orgNetwork+xml',
                    :ComplexTypeName => 'OrgNetworkType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.fileDescriptor+xml',
                    :ComplexTypeName => 'FileDescriptorType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.vcloud.uploadVAppTemplateParams+xml',
                    :ComplexTypeName => 'UploadVAppTemplateParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.licensingReportList+xml',
                    :ComplexTypeName => 'LicensingReportListType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vmwNetworkPool+xml',
                    :ComplexTypeName => 'VMWNetworkPoolType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.taskOperationList+xml',
                    :ComplexTypeName => 'TaskOperationListType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vSphereWebClientUrl+xml',
                    :ComplexTypeName => 'VSphereWebClientUrlType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.productSections+xml',
                    :ComplexTypeName => 'ProductSectionListType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.blockingTaskSettings+xml',
                    :ComplexTypeName => 'BlockingTaskSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.vAppTemplate+xml',
                    :ComplexTypeName => 'VAppTemplateType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.organizationPasswordPolicySettings+xml',
                    :ComplexTypeName => 'OrgPasswordPolicySettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.vcloud.mediaInsertOrEjectParams+xml',
                    :ComplexTypeName => 'MediaInsertOrEjectParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.vmPendingQuestion+xml',
                    :ComplexTypeName => 'VmPendingQuestionType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.organization+xml',
                    :ComplexTypeName => 'AdminOrgType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.ldapSettings+xml',
                    :ComplexTypeName => 'LdapSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.snapshotSection+xml',
                    :ComplexTypeName => 'SnapshotSectionType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.vAppTemplateLeaseSettings+xml',
                    :ComplexTypeName => 'OrgVAppTemplateLeaseSettingsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.importMediaParams+xml',
                    :ComplexTypeName => 'ImportMediaParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.resourcePoolSetUpdateParams+xml',
                    :ComplexTypeName => 'UpdateResourcePoolSetParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.licenseSettings+xml',
                    :ComplexTypeName => 'LicenseType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.bundleUploadParams+xml',
                    :ComplexTypeName => 'BundleUploadParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vmwNetworkPoolReferences+xml',
                    :ComplexTypeName => 'VMWNetworkPoolReferencesType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vcloud+xml',
                    :ComplexTypeName => 'VCloudType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.serviceResource+xml',
                    :ComplexTypeName => 'ServiceResourceType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.composeVAppParams+xml',
                    :ComplexTypeName => 'ComposeVAppParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.admin.vmwProviderVdcResourcePool+xml',
                    :ComplexTypeName => 'VMWProviderVdcResourcePoolSetType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.vm+xml',
                    :ComplexTypeName => 'VmType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       =>
                                        'application/vnd.vmware.vcloud.guestCustomizationSection+xml',
                    :ComplexTypeName => 'GuestCustomizationSectionType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.session+xml',
                    :ComplexTypeName => 'SessionType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.pvdcStorageProfile+xml',
                    :ComplexTypeName => 'ProviderVdcStorageProfileType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vmwStorageProfiles+xml',
                    :ComplexTypeName => 'VMWStorageProfilesType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.importVmAsVAppParams+xml',
                    :ComplexTypeName => 'ImportVmAsVAppParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.serviceLink+xml',
                    :ComplexTypeName => 'ServiceLinkType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.enableDownloadParams+xml',
                    :ComplexTypeName => 'EnableDownloadParamsType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.rasdItem+xml',
                    :ComplexTypeName => 'RASD_Type',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.startupSection+xml',
                    :ComplexTypeName => 'StartupSection_Type',
                    :SchemaLocation  =>
                                        'http://schemas.dmtf.org/ovf/envelope/1/dsp8023_1.1.0.xsd' },
                  { :MediaType       => 'application/vnd.vmware.vcloud.virtualHardwareSection+xml',
                    :ComplexTypeName => 'VirtualHardwareSection_Type',
                    :SchemaLocation  =>
                                        'http://schemas.dmtf.org/ovf/envelope/1/dsp8023_1.1.0.xsd' },
                  { :MediaType       => 'application/vnd.vmware.vcloud.operatingSystemSection+xml',
                    :ComplexTypeName => 'OperatingSystemSection_Type',
                    :SchemaLocation  =>
                                        'http://schemas.dmtf.org/ovf/envelope/1/dsp8023_1.1.0.xsd' },
                  { :MediaType       => 'application/vnd.vmware.vcloud.networkSection+xml',
                    :ComplexTypeName => 'NetworkSection_Type',
                    :SchemaLocation  =>
                                        'http://schemas.dmtf.org/ovf/envelope/1/dsp8023_1.1.0.xsd' },
                  { :MediaType       => 'application/vnd.vmware.vcloud.vAppNetwork+xml',
                    :ComplexTypeName => 'VAppNetworkType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.network+xml',
                    :ComplexTypeName => 'NetworkType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.vcloud.orgNetwork+xml',
                    :ComplexTypeName => 'OrgNetworkType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/master.xsd" },
                  { :MediaType       => 'application/vnd.vmware.admin.vmwexternalnet+xml',
                    :ComplexTypeName => 'VMWExternalNetworkType',
                    :SchemaLocation  =>
                                        "http://#{@host}#{@path}/v1.5/schema/vmwextensions.xsd" }] }] }

          Excon::Response.new(
            :body    => body,
            :headers => { 'Content-Type' => 'text/xml' },
            :status  => 200
          )
        end
        # rubocop:enable MethodLength

      end
      # rubocop:enable ClassLength

    end
  end
end
