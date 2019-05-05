
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, teleop-tools-msgs, actionlib, rostopic, rospy }:
buildRosPackage {
  pname = "ros-lunar-joy-teleop";
  version = "0.2.6";

  src = fetchurl {
    url = https://github.com/ros-gbp/teleop_tools-release/archive/release/lunar/joy_teleop/0.2.6-0.tar.gz;
    sha256 = "7b90f040e8c23efb9fe2ae63bf3b912743b12b973fefdaae34b4436e0146dc21";
  };

  propagatedBuildInputs = [ sensor-msgs teleop-tools-msgs actionlib rostopic rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A (to be) generic joystick interface to control a robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
