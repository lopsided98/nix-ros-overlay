
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, eigen, freeglut, glew, image-transport, libGL, libGLU, llvmPackages, message-filters, moveit-common, moveit-core, moveit-msgs, moveit-ros-occupancy-map-monitor, moveit-ros-planning, object-recognition-msgs, pluginlib, rclcpp, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-foxy-moveit-ros-perception";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_ros_perception/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "a1e1e06b700db74f56bdd4b9e61590a9564c950ea0db7083c346c40ae42d4d5f";
  };

  buildType = "ament_cmake";
  buildInputs = [ eigen moveit-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge freeglut glew image-transport libGL libGLU llvmPackages.openmp message-filters moveit-core moveit-msgs moveit-ros-occupancy-map-monitor moveit-ros-planning object-recognition-msgs pluginlib rclcpp sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Components of MoveIt connecting to perception'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
