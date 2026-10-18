
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, ros2launch, rosbag2-cpp, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ros2-tools";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ros2_tools/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "788533ce4e490394a3b440837568b52219582c4f16dbcb1015a8b734bf7bd42d";
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
