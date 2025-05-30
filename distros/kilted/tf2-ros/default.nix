
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, message-filters, rcl-interfaces, rclcpp, rclcpp-action, rclcpp-components, rosgraph-msgs, tf2, tf2-msgs }:
buildRosPackage {
  pname = "ros-kilted-tf2-ros";
  version = "0.41.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/kilted/tf2_ros/0.41.0-1.tar.gz";
    name = "0.41.0-1.tar.gz";
    sha256 = "b6202b197630230f729970448a75046479c230ef13bba8b29384999a8e6e2ac6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosgraph-msgs ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs message-filters rcl-interfaces rclcpp rclcpp-action rclcpp-components tf2 tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains the C++ ROS bindings for the tf2 library";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
