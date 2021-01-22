
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, eigen, eigen3-cmake-module, geometric-shapes, moveit-common, moveit-core, moveit-msgs, octomap, pluginlib, rclcpp, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-moveit-ros-occupancy-map-monitor";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_ros_occupancy_map_monitor/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "c3dffd1fae40294032b0060d830b2ab828c815d39d1a422b1f60e60813140f50";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module geometric-shapes moveit-core moveit-msgs octomap pluginlib rclcpp tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''Components of MoveIt connecting to occupancy map'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
