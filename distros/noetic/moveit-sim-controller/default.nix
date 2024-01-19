
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, moveit-ros-planning, ros-control-boilerplate, roscpp, roslint, rosparam-shortcuts }:
buildRosPackage {
  pname = "ros-noetic-moveit-sim-controller";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/moveit_sim_controller-release/archive/release/noetic/moveit_sim_controller/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "e14d41295815c0152a42a74bddf9c18e49b5d89a361de3555f50ba5459e9eed9";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  propagatedBuildInputs = [ moveit-core moveit-ros-planning ros-control-boilerplate roscpp rosparam-shortcuts ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simulation interface for a hardware interface for ros_control, and loads default joint values from SRDF'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
