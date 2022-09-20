
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, python3Packages, rospy, rosservice, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-controller-manager-msgs";
  version = "0.19.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/controller_manager_msgs/0.19.5-1.tar.gz";
    name = "0.19.5-1.tar.gz";
    sha256 = "ea8b3fb9d8920666496f71622704923e5581e9993ad34ffd51df1f0a30fdd966";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation python3Packages.setuptools ];
  propagatedBuildInputs = [ message-runtime rospy rosservice std-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Messages and services for the controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
