
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, eigen, freeglut, glew, image-transport, libGL, libGLU, llvmPackages, message-filters, moveit-common, moveit-core, moveit-msgs, moveit-ros-occupancy-map-monitor, moveit-ros-planning, object-recognition-msgs, pluginlib, rclcpp, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-jazzy-moveit-ros-perception";
  version = "2.12.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit_ros_perception/2.12.4-1.tar.gz";
    name = "2.12.4-1.tar.gz";
    sha256 = "b352e774a464b19f6be46488f6ace8a5d180ac7b749b843cd59c73123271cb69";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  propagatedBuildInputs = [ cv-bridge freeglut glew image-transport libGL libGLU llvmPackages.openmp message-filters moveit-common moveit-core moveit-msgs moveit-ros-occupancy-map-monitor moveit-ros-planning object-recognition-msgs pluginlib rclcpp sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Components of MoveIt connecting to perception";
    license = with lib.licenses; [ bsd3 ];
  };
}
