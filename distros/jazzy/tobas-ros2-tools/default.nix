
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, ros2launch, rosbag2-cpp, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ros2-tools";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ros2_tools/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "3f8485498b0cef5aa1efcad493d00c401433008777a9bb8e7b79625b06b29bfa";
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
