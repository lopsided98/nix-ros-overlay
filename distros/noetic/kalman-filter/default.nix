
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslint, rospy }:
buildRosPackage {
  pname = "ros-noetic-kalman-filter";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/wu_ros_tools/archive/release/noetic/kalman_filter/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "8cc1b7917e6b6820adb25c8c3831345d4b841487e9a94ddbf97f4cc402c073f3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Simple Kalman Filter in Python";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
