
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, roslib, rosnode, rospy, rosservice, rostest }:
buildRosPackage {
  pname = "ros-noetic-system-fingerprint";
  version = "0.6.2-r1";

  src = fetchurl {
    url = "https://github.com/MetroRobots/ros_system_fingerprint-release/archive/release/noetic/system_fingerprint/0.6.2-1.tar.gz";
    name = "0.6.2-1.tar.gz";
    sha256 = "409a28ac9e9c420f666bb4453ecd40108d8e79fbd50d0f9215b673827ef5ae6b";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ python3Packages.GitPython roslib rosnode rospy rosservice ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "The system_fingerprint package";
    license = with lib.licenses; [ "BSD-2-clause" ];
  };
}
