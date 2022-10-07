
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, roslib, rosnode, rospy, rosservice }:
buildRosPackage {
  pname = "ros-noetic-system-fingerprint";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/MetroRobots/ros_system_fingerprint-release/archive/release/noetic/system_fingerprint/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "7bc6b1ce8ac554e8cab9d3f51baa2f43a9525752ab04e2fbc14421f3ed9b63f2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python3Packages.GitPython roslib rosnode rospy rosservice ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The system_fingerprint package'';
    license = with lib.licenses; [ "BSD-2-clause" ];
  };
}
