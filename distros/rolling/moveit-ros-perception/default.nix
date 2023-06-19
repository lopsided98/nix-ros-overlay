
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, eigen, freeglut, glew, image-transport, libGL, libGLU, llvmPackages, message-filters, moveit-common, moveit-core, moveit-msgs, moveit-ros-occupancy-map-monitor, moveit-ros-planning, object-recognition-msgs, pluginlib, rclcpp, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-rolling-moveit-ros-perception";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_ros_perception/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "f43cced4014c8301a5af7b88637a559fce76684df1c74f804323a9c01172eb76";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge freeglut glew image-transport libGL libGLU llvmPackages.openmp message-filters moveit-common moveit-core moveit-msgs moveit-ros-occupancy-map-monitor moveit-ros-planning object-recognition-msgs pluginlib rclcpp sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Components of MoveIt connecting to perception'';
    license = with lib.licenses; [ bsd3 ];
  };
}
