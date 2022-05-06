
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, launch, launch-ros, moveit-ros-move-group, moveit-servo, rviz2, ur-description, urdf, warehouse-ros-mongo, xacro }:
buildRosPackage {
  pname = "ros-galactic-ur-moveit-config";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/galactic/ur_moveit_config/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "8d777fb4fbb67ec21aed5f83809681118a8b1448d6ef8c63538294ad9d8b1094";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ launch launch-ros moveit-ros-move-group moveit-servo rviz2 ur-description urdf warehouse-ros-mongo xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''An example package with MoveIt2 configurations for UR robots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
