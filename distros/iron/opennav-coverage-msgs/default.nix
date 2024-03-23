
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, nav-msgs, nav2-msgs, nav2-util, rclcpp, rclcpp-action, rclcpp-lifecycle, rosidl-default-generators, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-opennav-coverage-msgs";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/open-navigation/opennav_coverage-release/archive/release/iron/opennav_coverage_msgs/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "6a05d382ce745e6d3c9a2496481e852157bf9466cafdd8f93b1b5f9c606c0b49";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs nav-msgs nav2-msgs nav2-util rclcpp rclcpp-action rclcpp-lifecycle rosidl-default-generators tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A set of ROS interfaces for complete coverage planning";
    license = with lib.licenses; [ asl20 ];
  };
}
