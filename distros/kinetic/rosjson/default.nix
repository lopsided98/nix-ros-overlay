
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslib, rospy }:
buildRosPackage {
  pname = "ros-kinetic-rosjson";
  version = "1.0.7";

  src = fetchurl {
    url = "https://github.com/UNR-RoboticsResearchLab/web_interface-release/archive/release/kinetic/rosjson/1.0.7-0.tar.gz";
    name = "1.0.7-0.tar.gz";
    sha256 = "c5be596820a6f0fdba80fd28517a307c862d7c6a1f09437d530b9341d4fa571a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roslib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosjson is a Python library for converting ROS messages to JSON
     (JavaScript Object Notation) representation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
