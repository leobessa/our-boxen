class people::leobessa {
  include nodejs::v0_10

  git::config::global {
    'alias.st': value => 'status';
    'alias.co': value => 'checkout';
    'alias.ci': value => 'commit';
    'alias.lg': value => 'log --color --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit';
  }

  $home     = "/Users/${::luser}"
  class { 'nodejs::global': version => 'v0.10.13' }

}
