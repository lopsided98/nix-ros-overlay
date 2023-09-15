
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, geometric-shapes, moveit-common, moveit-core, moveit-msgs, octomap, pluginlib, rclcpp, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-moveit-ros-occupancy-map-monitor";
  version = "2.8.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_ros_occupancy_map_monitor/2.8.0-2.tar.gz";
    name = "2.8.0-2.tar.gz";
    sha256 = "1b7943799c1643ed41efc1d293939a176d17578dfcbad2af7844903fb4b98416";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module geometric-shapes moveit-common moveit-core moveit-msgs octomap pluginlib rclcpp tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''Components of MoveIt connecting to occupancy map'';
    license = with lib.licenses; [ bsd3 ];
  };
}
