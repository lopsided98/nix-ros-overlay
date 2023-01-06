
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, controller-manager, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, moveit-ros-move-group, moveit-simple-controller-manager, robot-state-publisher, rviz2, ur-controllers, ur-description, ur-moveit-config, urdf, warehouse-ros-mongo, xacro }:
buildRosPackage {
  pname = "ros-foxy-ur-bringup";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/foxy/ur_bringup/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "7dafb1e9059c5e11be824334c7011c00d3552204ac5a3f502ea5d6591a9a1d46";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-python controller-manager joint-state-broadcaster joint-trajectory-controller launch launch-ros moveit-ros-move-group moveit-simple-controller-manager robot-state-publisher rviz2 ur-controllers ur-description ur-moveit-config urdf warehouse-ros-mongo xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch file and run-time configurations, e.g. controllers.'';
    license = with lib.licenses; [ asl20 ];
  };
}
