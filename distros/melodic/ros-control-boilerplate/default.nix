
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cmake-modules, control-msgs, control-toolbox, controller-manager, gflags, hardware-interface, joint-limits-interface, roscpp, rosparam-shortcuts, sensor-msgs, std-msgs, trajectory-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-melodic-ros-control-boilerplate";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/ros_control_boilerplate-release/archive/release/melodic/ros_control_boilerplate/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "ef24a60447530fb1c62e086164715eae45cd02d5d46f105020c9664d81712a8e";
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
