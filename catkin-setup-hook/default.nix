{ runCommand }:

distro:

runCommand "ros-setup-hook.sh" {
  inherit distro;
} ''
  cp ${./setup-hook.sh} setup-hook.sh
  substituteAllInPlace setup-hook.sh
  mv setup-hook.sh $out
''
