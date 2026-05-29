
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-black, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-mypy, ament-cmake-pep257, ament-cmake-python, ament-cmake-uncrustify, ament-cmake-xmllint, ament-index-python, ament-lint-auto, geometry-msgs, leo-msgs, nav-msgs, python3Packages, rcl-interfaces, rclcpp, rclcpp-components, rclpy, ros2cli, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-lyrical-leo-fw";
  version = "2.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/lyrical/leo_fw/2.6.1-1.tar.gz";
    name = "2.6.1-1.tar.gz";
    sha256 = "e0bdae2e6be25edcb4f3481cdad0c6a61a2169205773fd3f980ebfaa8fb0c88d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-black ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-mypy ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ ament-index-python geometry-msgs leo-msgs nav-msgs python3Packages.dbus-python python3Packages.pyyaml python3Packages.whichcraft rcl-interfaces rclcpp rclcpp-components rclpy ros2cli sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Binary releases of Leo Rover firmware and related utilities";
    license = with lib.licenses; [ mit ];
  };
}
