
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, backward-ros, boost, builtin-interfaces, cras-lint, eigen, fmt, geometry-msgs, rcl, rclcpp, rclcpp-components, rcutils, rmw, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, tl-expected }:
buildRosPackage {
  pname = "ros-kilted-cras-cpp-common";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cras_ros_utils-release/archive/release/kilted/cras_cpp_common/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "9c629ab78c05737ced16f222d8d02cf0a6696e5d14e36d60a5699840386efac3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros cras-lint eigen geometry-msgs std-msgs tf2 ];
  propagatedBuildInputs = [ backward-ros boost builtin-interfaces fmt rcl rclcpp rclcpp-components rcutils rmw tf2 tf2-geometry-msgs tf2-ros tl-expected ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "A Czech-army knife for ROS code written in C++.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
