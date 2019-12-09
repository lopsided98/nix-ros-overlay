
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, sensor-msgs, control-toolbox, joint-limits-interface, controller-manager, std-msgs, urdf, hardware-interface, catkin, actionlib, rosparam-shortcuts, cmake-modules, transmission-interface, roscpp, gflags, control-msgs }:
buildRosPackage {
  pname = "ros-melodic-ros-control-boilerplate";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/ros_control_boilerplate-release/archive/release/melodic/ros_control_boilerplate/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "0a7ce80db50a833c0ac201c31caba85ebdc1192a279adcc9b5e61ab86c1b7899";
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
