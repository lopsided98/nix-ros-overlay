# Environment containing ROS 2 desktop_full entry point
# (https://www.ros.org/reps/rep-2001.html#end-user-entry-points)

# Usage:
# nix-shell ros2-desktop.nix
# nix develop --impure .#example-ros2-desktop
{
  pkgs ? import ../. { },
  rosDistro ? "jazzy",
}:
import ./ros2-basic.nix {
  inherit pkgs rosDistro;
  package = "desktop";
}
