
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, roslint, ros-control-boilerplate, catkin, moveit-core, rosparam-shortcuts, roscpp }:
buildRosPackage {
  pname = "ros-lunar-moveit-sim-controller";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/davetcoleman/moveit_sim_controller-release/archive/release/lunar/moveit_sim_controller/0.1.0-0.tar.gz;
    sha256 = "9cd5698fa5789a94c942d58c15b5a71f68e3066ee85e6d9bcd588aa2a6e071d3";
  };

  buildInputs = [ moveit-ros-planning roslint ros-control-boilerplate moveit-core rosparam-shortcuts roscpp ];
  propagatedBuildInputs = [ moveit-ros-planning ros-control-boilerplate moveit-core rosparam-shortcuts roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simulation interface for a hardware interface for ros_control, and loads default joint values from SRDF'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
