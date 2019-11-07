
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, cmake-modules, control-msgs, gflags, trajectory-msgs, joint-limits-interface, catkin, control-toolbox, sensor-msgs, urdf, actionlib, std-msgs, rosparam-shortcuts, roscpp, transmission-interface }:
buildRosPackage {
  pname = "ros-melodic-ros-control-boilerplate";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/ros_control_boilerplate-release/archive/release/melodic/ros_control_boilerplate/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "0a7ce80db50a833c0ac201c31caba85ebdc1192a279adcc9b5e61ab86c1b7899";
  };

  buildType = "catkin";
  buildInputs = [ controller-manager hardware-interface cmake-modules gflags control-msgs trajectory-msgs control-toolbox joint-limits-interface sensor-msgs urdf actionlib std-msgs rosparam-shortcuts roscpp transmission-interface ];
  propagatedBuildInputs = [ controller-manager hardware-interface control-msgs control-toolbox sensor-msgs trajectory-msgs joint-limits-interface urdf actionlib std-msgs rosparam-shortcuts roscpp transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple simulation interface and template for setting up a hardware interface for ros_control'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
