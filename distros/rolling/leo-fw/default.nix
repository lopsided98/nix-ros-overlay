
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-black, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-mypy, ament-cmake-python, ament-cmake-uncrustify, ament-cmake-xmllint, ament-index-python, ament-lint-auto, geometry-msgs, leo-msgs, nav-msgs, python3Packages, rclcpp, rclcpp-components, rclpy, ros2cli, sensor-msgs, std-msgs, std-srvs, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-leo-fw";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/rolling/leo_fw/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "959a2f545d13bad125d993ba9859f30f8da031834c655158183803aee12e23db";
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
