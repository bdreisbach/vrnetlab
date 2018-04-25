[global.config]
  as = "{{config.LOCAL_AS}}"
  router-id = "{{config.ROUTER_ID}}"

{%- if config.IPV4_NEIGHBOR %}
[[neighbors]]
    [neighbors.config]
        neighbor-address = "{{config.IPV4_NEIGHBOR}}"
        peer-as = "{{config.PEER_AS}}"
    [neighbors.transport.config]
        local-address = "{{config.IPV4_LOCAL_ADDRESS}}"
    {%- if not config.ALLOW_MIXED_AFI_TRANSPORT %}
    [[neighbors.afi-safis]]
        [neighbors.afi-safis.config]
            afi-safi-name = "ipv4-unicast"
    {%- endif %}
{%- endif %}

{%- if config.IPV6_NEIGHBOR %}
[[neighbors]]
    [neighbors.config]
        neighbor-address = "{{config.IPV6_NEIGHBOR}}"
        peer-as = "{{config.PEER_AS}}"
    [neighbors.transport.config]
        local-address = "{{config.IPV6_LOCAL_ADDRESS}}"
    {%- if not config.ALLOW_MIXED_AFI_TRANSPORT %}
    [[neighbors.afi-safis]]
        [neighbors.afi-safis.config]
            afi-safi-name = "ipv6-unicast"
    {%- endif %}
{%- endif %}

