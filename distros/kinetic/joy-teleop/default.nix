
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, rospy, rostopic, sensor-msgs, teleop-tools-msgs }:
buildRosPackage {
  pname = "ros-kinetic-joy-teleop";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/kinetic/joy_teleop/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "b2088e4af99b40191b47073d8192147731d6514289128551011a89173fc518c2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib rospy rostopic sensor-msgs teleop-tools-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A (to be) generic joystick interface to control a robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
