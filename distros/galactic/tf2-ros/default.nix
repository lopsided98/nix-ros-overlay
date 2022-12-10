
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, message-filters, rcl-interfaces, rclcpp, rclcpp-action, rclcpp-components, tf2, tf2-msgs }:
buildRosPackage {
  pname = "ros-galactic-tf2-ros";
  version = "0.17.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/galactic/tf2_ros/0.17.5-1.tar.gz";
    name = "0.17.5-1.tar.gz";
    sha256 = "236b72b24c88e22fea4c85c079cf1abebfe62ffb0e011db21bbc2ee41508f4c7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs message-filters rcl-interfaces rclcpp rclcpp-action rclcpp-components tf2 tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains the C++ ROS bindings for the tf2 library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
