
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, message-filters, rcl-interfaces, rclcpp, rclcpp-action, rclcpp-components, rcpputils, rosgraph-msgs, tf2, tf2-msgs }:
buildRosPackage {
  pname = "ros-rolling-tf2-ros";
  version = "0.46.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_ros/0.46.1-1.tar.gz";
    name = "0.46.1-1.tar.gz";
    sha256 = "55e903654cd5c099203e1aab8b440c080f7b3ccb5ee93bc576a3fa5cc319bb37";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosgraph-msgs ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs message-filters rcl-interfaces rclcpp rclcpp-action rclcpp-components rcpputils tf2 tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains the C++ ROS bindings for the tf2 library";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
