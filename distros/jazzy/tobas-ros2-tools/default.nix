
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, ros2launch, rosbag2-cpp, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ros2-tools";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ros2_tools/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "36925367a9f2e2af78bfde3788e996ad17d2bed7204788b3de55d168f694981d";
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
