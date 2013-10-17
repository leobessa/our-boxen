class people::leobessa {
  include java
  include xquartz
  include python
  include firefox
  include sublime_text_2
  include erlang
  include onepassword
  include textmate::textmate2::release
  include iterm2::stable
  include cassandra
  include wget
  include heroku
  include redis
  include colloquy
  include eclipse::java
  include nodejs::v0_10

  git::config::global {
    'alias.st': value => 'status';
    'alias.co': value => 'checkout';
    'alias.ci': value => 'commit';
    'alias.lg': value => 'log --color --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit';
  }

  sublime_text_2::package { 
    'Emmet': source => 'sergeche/emmet-sublime';
  }

  $home     = "/Users/${::luser}"

  include vagrant

  vagrant::plugin { 'vagrant-vmware-fusion':
    license => '/opt/boxen/repo/modules/people/leobessa/licenses/license-vagrant-vmware-fusion.lic',
  }

  vagrant::box { 'squeeze64/vmware_fusion':
    source => 'https://s3.amazonaws.com/github-ops/vagrant/squeeze64-6.0.7-vmware_fusion.box'
  }

  class { 'nodejs::global': version => 'v0.10.18' }
  nodejs::module { 'bower': node_version => 'v0.10' }
}
