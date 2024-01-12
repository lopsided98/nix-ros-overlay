
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, roslib, rosnode, rospy, rosservice, rostest }:
buildRosPackage {
  pname = "ros-noetic-system-fingerprint";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/MetroRobots/ros_system_fingerprint-release/archive/release/noetic/system_fingerprint/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "f50e5c06fc1645fb25f6ec6826a616dcf35d91acdfe6c3157e3b597102182bd9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ python3Packages.GitPython roslib rosnode rospy rosservice ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The system_fingerprint package'';
    license = with lib.licenses; [ "BSD-2-clause" ];
  };
}
