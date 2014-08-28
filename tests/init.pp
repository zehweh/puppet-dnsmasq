class { 'dnsmasq':
  interface     => 'lo',
  domain        => 'int.lan',
  port          => '53',
  expand_hosts  => true,
  enable_tftp   => true,
  tftp_root     => '/var/lib/tftpboot',
  dhcp_boot     => 'pxelinux.0',
  domain_needed => true,
  bogus_priv    => true,
  no_negcache   => true,
  no_hosts      => true,
  resolv_file   => '/etc/resolv.conf',
  cache_size    => 1000
}
