
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, rospy, rostopic, sensor-msgs, teleop-tools-msgs }:
buildRosPackage {
  pname = "ros-kinetic-joy-teleop";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/kinetic/joy_teleop/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "fb103a3378b8dd99bc396dbf2ba0d3cd0fd222739c4f6266aef50f82259b1335";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib rospy rostopic sensor-msgs teleop-tools-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A (to be) generic joystick interface to control a robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
