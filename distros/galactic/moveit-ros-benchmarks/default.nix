
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, launch-param-builder, moveit-common, moveit-configs-utils, moveit-ros-planning, moveit-ros-warehouse, pluginlib, rclcpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-galactic-moveit-ros-benchmarks";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/moveit_ros_benchmarks/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "6affa2715ef517048661ed3d1b3726079929e2bde62a100086fe863ac7918689";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake moveit-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost launch-param-builder moveit-configs-utils moveit-ros-planning moveit-ros-warehouse pluginlib rclcpp tf2-eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Enhanced tools for benchmarks in MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
