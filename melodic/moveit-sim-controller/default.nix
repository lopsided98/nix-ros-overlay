
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, catkin, rosparam-shortcuts, moveit-ros-planning, roslint, ros-control-boilerplate, roscpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-sim-controller";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/moveit_sim_controller-release/archive/release/melodic/moveit_sim_controller/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "86cfd592c05305bb60387de3f33bcc248b800f29d8e6f7aeba371349da86372e";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core rosparam-shortcuts moveit-ros-planning roslint ros-control-boilerplate roscpp ];
  propagatedBuildInputs = [ moveit-core rosparam-shortcuts roscpp ros-control-boilerplate moveit-ros-planning ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simulation interface for a hardware interface for ros_control, and loads default joint values from SRDF'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
