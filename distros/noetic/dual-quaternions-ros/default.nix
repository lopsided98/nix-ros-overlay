
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dual-quaternions, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-noetic-dual-quaternions-ros";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/Achllle/dual_quaternions_ros-release/archive/release/noetic/dual_quaternions_ros/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "9b05be8641a2435cb8e1756cef909151c8d7ef114ef1776f13b552a6e249779d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dual-quaternions geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS msgs from and to dual quaternions'';
    license = with lib.licenses; [ mit ];
  };
}
