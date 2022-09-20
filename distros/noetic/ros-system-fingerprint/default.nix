
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, roslib, rosnode, rospy }:
buildRosPackage {
  pname = "ros-noetic-ros-system-fingerprint";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/MetroRobots/ros_system_fingerprint-release/archive/release/noetic/ros_system_fingerprint/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "6501b19c0d916e475c39d39839cc65a449fd296d93b996af0da838e7ec1f29f4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python3Packages.GitPython roslib rosnode rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_system_fingerprint package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
