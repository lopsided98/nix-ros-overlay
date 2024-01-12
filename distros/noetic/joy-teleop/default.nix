
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, rospy, rosservice, rostopic, sensor-msgs, teleop-tools-msgs }:
buildRosPackage {
  pname = "ros-noetic-joy-teleop";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/noetic/joy_teleop/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "7000c8368414f38014008631f720b5e8d8a92cdddf349fb33cb9b760e15a0066";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib rospy rosservice rostopic sensor-msgs teleop-tools-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A (to be) generic joystick interface to control a robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
