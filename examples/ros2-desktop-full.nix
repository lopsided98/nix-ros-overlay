# Environment containing ROS 2 desktop_full entry point
# (https://www.ros.org/reps/rep-2001.html#end-user-entry-points)

# Usage:
# NIXPKGS_ALLOW_INSECURE=1 nix-shell ros2-desktop-full.nix
# NIXPKGS_ALLOW_INSECURE=1 nix develop --impure .#example-ros2-desktop-full
{
  pkgs ? import ../. { },
  rosDistro ? "jazzy",
}:
import ./ros2-basic.nix {
  inherit pkgs rosDistro;
  package = "desktop-full";
}
