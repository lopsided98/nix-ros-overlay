
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, controller-manager, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, moveit-ros-move-group, moveit-simple-controller-manager, robot-state-publisher, rviz2, ur-controllers, ur-description, ur-moveit-config, urdf, warehouse-ros-mongo, xacro }:
buildRosPackage {
  pname = "ros-foxy-ur-bringup";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/foxy/ur_bringup/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "e70163dce9e7974137f91459f542ceaf7f670a13ad7e4b1b41c27cea99b24c7a";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-index-python controller-manager joint-state-broadcaster joint-trajectory-controller launch launch-ros moveit-ros-move-group moveit-simple-controller-manager robot-state-publisher rviz2 ur-controllers ur-description ur-moveit-config urdf warehouse-ros-mongo xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch file and run-time configurations, e.g. controllers.'';
    license = with lib.licenses; [ asl20 ];
  };
}
