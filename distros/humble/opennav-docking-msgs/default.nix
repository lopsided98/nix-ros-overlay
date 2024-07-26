
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, nav-msgs, nav2-msgs, nav2-util, rclcpp, rclcpp-action, rclcpp-lifecycle, rosidl-default-generators, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-opennav-docking-msgs";
  version = "0.0.2-r4";

  src = fetchurl {
    url = "https://github.com/open-navigation/opennav_docking-release/archive/release/humble/opennav_docking_msgs/0.0.2-4.tar.gz";
    name = "0.0.2-4.tar.gz";
    sha256 = "c4439be01d8031c5db9959c58a8e4e451dec5813cbcab66f6c169628c0b7d087";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs nav-msgs nav2-msgs nav2-util rclcpp rclcpp-action rclcpp-lifecycle rosidl-default-generators tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A set of ROS interfaces for docking and undocking";
    license = with lib.licenses; [ asl20 ];
  };
}
