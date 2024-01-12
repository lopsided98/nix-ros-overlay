
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cmake-modules, control-msgs, control-toolbox, controller-manager, gflags, hardware-interface, joint-limits-interface, roscpp, rosparam-shortcuts, sensor-msgs, std-msgs, trajectory-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-noetic-ros-control-boilerplate";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/ros_control_boilerplate-release/archive/release/noetic/ros_control_boilerplate/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "41db741a7cbc512777dc79ee4457457394989c4c367296f68fa4a79c0d9983ac";
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
