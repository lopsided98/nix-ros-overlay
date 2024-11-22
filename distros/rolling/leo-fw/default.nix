
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-black, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-mypy, ament-cmake-python, ament-cmake-uncrustify, ament-cmake-xmllint, ament-index-python, ament-lint-auto, geometry-msgs, leo-msgs, nav-msgs, python3Packages, rclcpp, rclcpp-components, rclpy, ros2cli, sensor-msgs, std-msgs, std-srvs, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-leo-fw";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/rolling/leo_fw/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "a1b316719849b1718e7cfb61152650cadf0b378f5609f093b74b102b91e14a80";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python yaml-cpp ];
  checkInputs = [ ament-cmake-black ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-mypy ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ ament-index-python geometry-msgs leo-msgs nav-msgs python3Packages.dbus-python python3Packages.numpy python3Packages.pyyaml python3Packages.whichcraft rclcpp rclcpp-components rclpy ros2cli sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Binary releases of Leo Rover firmware and related utilities";
    license = with lib.licenses; [ mit ];
  };
}
