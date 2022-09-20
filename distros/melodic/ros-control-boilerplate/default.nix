
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cmake-modules, control-msgs, control-toolbox, controller-manager, gflags, hardware-interface, joint-limits-interface, roscpp, rosparam-shortcuts, sensor-msgs, std-msgs, trajectory-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-melodic-ros-control-boilerplate";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/ros_control_boilerplate-release/archive/release/melodic/ros_control_boilerplate/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "32bc71c9a5eea76b805a56072ea0e638cdf78f8ea2d8de13fb8c0c72fc512514";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules gflags ];
  propagatedBuildInputs = [ actionlib control-msgs control-toolbox controller-manager hardware-interface joint-limits-interface roscpp rosparam-shortcuts sensor-msgs std-msgs trajectory-msgs transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple simulation interface and template for setting up a hardware interface for ros_control'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
