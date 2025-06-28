
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-black, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-mypy, ament-cmake-python, ament-cmake-uncrustify, ament-cmake-xmllint, ament-index-python, ament-lint-auto, geometry-msgs, leo-msgs, nav-msgs, python3Packages, rclcpp, rclcpp-components, rclpy, ros2cli, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-leo-fw";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/rolling/leo_fw/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "e41b0ce50b4c880c94d617d27517bc8653a3f66c9997fccb2a03f19ad009b895";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-black ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-mypy ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ ament-index-python geometry-msgs leo-msgs nav-msgs python3Packages.dbus-python python3Packages.pyyaml python3Packages.whichcraft rclcpp rclcpp-components rclpy ros2cli sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Binary releases of Leo Rover firmware and related utilities";
    license = with lib.licenses; [ mit ];
  };
}
