
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, teleop-tools-msgs, actionlib, rostopic, rospy }:
buildRosPackage {
  pname = "ros-melodic-joy-teleop";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/teleop_tools-release/archive/release/melodic/joy_teleop/0.3.0-0.tar.gz;
    sha256 = "36f191ff3945af0b25a599fecf08a999b1d7bdf91e0f387775a3e6adda9be052";
  };

  propagatedBuildInputs = [ rostopic actionlib rospy sensor-msgs teleop-tools-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A (to be) generic joystick interface to control a robot'';
    #license = lib.licenses.BSD;
  };
}
