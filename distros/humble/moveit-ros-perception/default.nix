
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, eigen, freeglut, glew, image-transport, libGL, libGLU, llvmPackages, message-filters, moveit-common, moveit-core, moveit-msgs, moveit-ros-occupancy-map-monitor, moveit-ros-planning, object-recognition-msgs, pluginlib, rclcpp, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-humble-moveit-ros-perception";
  version = "2.5.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/humble/moveit_ros_perception/2.5.1-1.tar.gz";
    name = "2.5.1-1.tar.gz";
    sha256 = "4ca50390b2c51ec2dc7b90b34a25282dede99a17b5169965bcfea81f71a6d7f8";
  };

  buildType = "ament_cmake";
  buildInputs = [ eigen ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge freeglut glew image-transport libGL libGLU llvmPackages.openmp message-filters moveit-common moveit-core moveit-msgs moveit-ros-occupancy-map-monitor moveit-ros-planning object-recognition-msgs pluginlib rclcpp sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Components of MoveIt connecting to perception'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
