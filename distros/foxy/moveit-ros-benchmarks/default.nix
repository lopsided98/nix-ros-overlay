
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, moveit-common, moveit-ros-planning, moveit-ros-warehouse, pluginlib, rclcpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-foxy-moveit-ros-benchmarks";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_ros_benchmarks/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "5a8393a377f1627afe335059ddeedaf1c4896e82609f9be6d00ea1b95b5380ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common ];
  propagatedBuildInputs = [ boost moveit-ros-planning moveit-ros-warehouse pluginlib rclcpp tf2-eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Enhanced tools for benchmarks in MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
