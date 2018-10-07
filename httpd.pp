class httpprint {

  $httppkg='httpd'
  $httpservice='httpd'

  package {$httppkg:
          ensure => present,
          notify => Service[$httpservice],
  }

  service {$httpservice:
      ensure => running,
      enable => true,
 }
}
include httpprint 
 
