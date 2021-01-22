
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dual-quaternions, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-kinetic-dual-quaternions-ros";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/Achllle/dual_quaternions_ros-release/archive/release/kinetic/dual_quaternions_ros/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "ce4160460c0a993ddfcef5d5d72ab1228be1f75a0d65cb07cbef8436499d7d5b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dual-quaternions geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS msgs from and to dual quaternions'';
    license = with lib.licenses; [ mit ];
  };
}
