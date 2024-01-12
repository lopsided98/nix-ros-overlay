
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslint, rospy }:
buildRosPackage {
  pname = "ros-noetic-kalman-filter";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/wu_ros_tools/archive/release/noetic/kalman_filter/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "343082c9f9a54591f3e81a0fdb6c3b92731e54f25818208be8dad393bed88312";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple Kalman Filter in Python'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
