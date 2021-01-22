
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, rospy, rostopic, sensor-msgs, teleop-tools-msgs }:
buildRosPackage {
  pname = "ros-noetic-joy-teleop";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/noetic/joy_teleop/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "8824c105187a12a47186db7ff08706673316d2aca3dae67ffa987eeaeb74d475";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib rospy rostopic sensor-msgs teleop-tools-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A (to be) generic joystick interface to control a robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
