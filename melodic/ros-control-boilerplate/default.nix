
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, cmake-modules, control-msgs, gflags, trajectory-msgs, joint-limits-interface, catkin, control-toolbox, sensor-msgs, urdf, actionlib, std-msgs, rosparam-shortcuts, roscpp, transmission-interface }:
buildRosPackage {
  pname = "ros-melodic-ros-control-boilerplate";
  version = "0.4.1";

  src = fetchurl {
    url = https://github.com/PickNikRobotics/ros_control_boilerplate-release/archive/release/melodic/ros_control_boilerplate/0.4.1-0.tar.gz;
    sha256 = "b597b2799ddfb59bdc4e395c3392f794594606bf24e929ebcf03e4cb253dc576";
  };

  buildInputs = [ controller-manager hardware-interface cmake-modules gflags control-msgs trajectory-msgs control-toolbox joint-limits-interface sensor-msgs urdf actionlib std-msgs rosparam-shortcuts roscpp transmission-interface ];
  propagatedBuildInputs = [ controller-manager hardware-interface control-msgs trajectory-msgs control-toolbox joint-limits-interface sensor-msgs urdf actionlib std-msgs rosparam-shortcuts roscpp transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple simulation interface and template for setting up a hardware interface for ros_control'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
