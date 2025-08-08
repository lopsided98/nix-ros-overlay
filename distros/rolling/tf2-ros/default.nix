
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, message-filters, rcl-interfaces, rclcpp, rclcpp-action, rclcpp-components, rosgraph-msgs, tf2, tf2-msgs }:
buildRosPackage {
  pname = "ros-rolling-tf2-ros";
  version = "0.44.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_ros/0.44.0-1.tar.gz";
    name = "0.44.0-1.tar.gz";
    sha256 = "91c1fc2c6267c4a914f6426464d451e37885eccc27e94f9acbf7dc674d7796f8";
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
