
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, sensor-msgs, control-toolbox, joint-limits-interface, controller-manager, std-msgs, urdf, hardware-interface, catkin, actionlib, rosparam-shortcuts, cmake-modules, transmission-interface, roscpp, gflags, control-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ros-control-boilerplate";
  version = "0.4.1";

  src = fetchurl {
    url = "https://github.com/davetcoleman/ros_control_boilerplate-release/archive/release/kinetic/ros_control_boilerplate/0.4.1-0.tar.gz";
    name = "0.4.1-0.tar.gz";
    sha256 = "549a61a022dc82b3c28a2fa180a965a35cf74e171e937a56b0e1466dcd2a679a";
  };

  buildType = "catkin";
  buildInputs = [ trajectory-msgs sensor-msgs controller-manager urdf hardware-interface std-msgs joint-limits-interface control-toolbox actionlib rosparam-shortcuts cmake-modules transmission-interface roscpp gflags control-msgs ];
  propagatedBuildInputs = [ trajectory-msgs sensor-msgs controller-manager urdf hardware-interface std-msgs joint-limits-interface control-toolbox actionlib rosparam-shortcuts transmission-interface roscpp control-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple simulation interface and template for setting up a hardware interface for ros_control'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
