
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, ros2launch, rosbag2-cpp, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ros2-tools";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ros2_tools/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "2dc46fb3d2e1c9cdc0017d4d84d46da9d19628241eb1a0373a67b49d15390dd7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rclcpp ros2launch rosbag2-cpp tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Reusable ROS 2 utilities for nodes, QoS, timing, actions, services, parameters, TF, and rosbag.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
