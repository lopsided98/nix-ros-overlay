
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, message-filters, rcl-interfaces, rclcpp, rclcpp-action, rclcpp-components, rosgraph-msgs, tf2, tf2-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tf2-ros";
  version = "0.36.19-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/jazzy/tf2_ros/0.36.19-1.tar.gz";
    name = "0.36.19-1.tar.gz";
    sha256 = "db8f26580d52a8183c5e916fc0a039a0a9114808637884d11de4eebf56a4408d";
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
