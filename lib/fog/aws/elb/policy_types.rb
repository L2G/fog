class Fog::AWS::ELB::Mock
  POLICY_TYPES = [{
    "Description" => "",
    "PolicyAttributeTypeDescriptions" => [{
      "AttributeName" => "CookieName",
      "AttributeType" => "String",
      "Cardinality" => "ONE",
      "DefaultValue" => "",
      "Description" => ""
    }],
    "PolicyTypeName" => "AppCookieStickinessPolicyType"
  },
  {
    "Description" => "",
    "PolicyAttributeTypeDescriptions" => [{
      "AttributeName" => "CookieExpirationPeriod",
      "AttributeType" => "String",
      "Cardinality" => "ONE",
      "DefaultValue" => "",
      "Description" => ""
    }],
    "PolicyTypeName" => "LBCookieStickinessPolicyType"
  },
  {
    "Description" => "Policy containing a list of public keys to accept when authenticating the back-end server(s). This policy cannot be applied directly to back-end servers or listeners but must be part of a BackendServerAuthenticationPolicyType.",
    "PolicyAttributeTypeDescriptions" => [{
      "AttributeName" => "PublicKey",
      "AttributeType" => "String",
      "Cardinality" => "ONE",
      "DefaultValue" => "",
      "Description" => ""
    }],
    "PolicyTypeName" => "PublicKeyPolicyType"
  },
  {
    "Description" => "Listener policy that defines the ciphers and protocols that will be accepted by the load balancer.  This policy can be associated only with HTTPS/SSL listeners.",
    "PolicyAttributeTypeDescriptions" => [{
      "AttributeName" => "Protocol-SSLv2",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "EDH-DSS-DES-CBC3-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "DHE-RSA-CAMELLIA128-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "DES-CBC-MD5",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "KRB5-RC4-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "ADH-CAMELLIA128-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "EXP-KRB5-RC4-MD5",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "ADH-RC4-MD5",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "PSK-RC4-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "PSK-AES128-CBC-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "EXP-EDH-RSA-DES-CBC-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "CAMELLIA128-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "DHE-DSS-AES128-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "EDH-RSA-DES-CBC-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "DHE-RSA-SEED-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "KRB5-DES-CBC-MD5",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "DHE-RSA-CAMELLIA256-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "ADH-DES-CBC3-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "DES-CBC3-MD5",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "EXP-KRB5-RC2-CBC-MD5",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "EDH-DSS-DES-CBC-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "KRB5-DES-CBC-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "PSK-AES256-CBC-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "ADH-AES256-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "KRB5-DES-CBC3-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "AES128-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "TRUE",
      "Description" => ""
    },
    {
      "AttributeName" => "DHE-DSS-SEED-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "ADH-CAMELLIA256-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "EXP-KRB5-RC4-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "EDH-RSA-DES-CBC3-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "EXP-KRB5-DES-CBC-MD5",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "Protocol-TLSv1",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "TRUE",
      "Description" => ""
    },
    {
      "AttributeName" => "PSK-3DES-EDE-CBC-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "SEED-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "DHE-DSS-CAMELLIA256-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "IDEA-CBC-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "RC2-CBC-MD5",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "KRB5-RC4-MD5",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "ADH-AES128-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "RC4-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "TRUE",
      "Description" => ""
    },
    {
      "AttributeName" => "AES256-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "TRUE",
      "Description" => ""
    },
    {
      "AttributeName" => "Protocol-SSLv3",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "TRUE",
      "Description" => ""
    },
    {
      "AttributeName" => "EXP-DES-CBC-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "DES-CBC3-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "TRUE",
      "Description" => ""
    },
    {
      "AttributeName" => "DHE-RSA-AES128-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "EXP-EDH-DSS-DES-CBC-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "EXP-KRB5-RC2-CBC-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "DHE-RSA-AES256-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "KRB5-DES-CBC3-MD5",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "RC4-MD5",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "TRUE",
      "Description" => ""
    },
    {
      "AttributeName" => "EXP-RC2-CBC-MD5",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "DES-CBC-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "EXP-ADH-RC4-MD5",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "EXP-RC4-MD5",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "ADH-DES-CBC-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "CAMELLIA256-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "DHE-DSS-CAMELLIA128-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "EXP-KRB5-DES-CBC-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "EXP-ADH-DES-CBC-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "DHE-DSS-AES256-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    },
    {
      "AttributeName" => "ADH-SEED-SHA",
      "AttributeType" => "Boolean",
      "Cardinality" => "ONE",
      "DefaultValue" => "FALSE",
      "Description" => ""
    }],
    "PolicyTypeName" => "SSLNegotiationPolicyType"
  },
  {
  "Description" => "Policy that controls whether to include the IP address and port of the originating request for TCP messages. This policy operates on TCP/SSL listeners only",
  "PolicyAttributeTypeDescriptions" => [{
     "AttributeName" => "ProxyProtocol",
     "AttributeType" => "Boolean",
     "Cardinality" => "ONE",
     "DefaultValue" => "",
     "Description" => ""
  }],
  "PolicyTypeName" => "ProxyProtocolPolicyType"
}]
end
