
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cmake-modules, control-msgs, control-toolbox, controller-manager, gflags, hardware-interface, joint-limits-interface, roscpp, rosparam-shortcuts, sensor-msgs, std-msgs, trajectory-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-kinetic-ros-control-boilerplate";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/davetcoleman/ros_control_boilerplate-release/archive/release/kinetic/ros_control_boilerplate/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "65102150a54122d63ba24c22ea5032db8e284d262b7d17c1d1cb600881b237c9";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules gflags ];
  propagatedBuildInputs = [ actionlib control-msgs control-toolbox controller-manager hardware-interface joint-limits-interface roscpp rosparam-shortcuts sensor-msgs std-msgs trajectory-msgs transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple simulation interface and template for setting up a hardware interface for ros_control'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
