
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dual-quaternions, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-kinetic-dual-quaternions-ros";
  version = "0.1.3-r3";

  src = fetchurl {
    url = "https://github.com/Achllle/dual_quaternions_ros-release/archive/release/kinetic/dual_quaternions_ros/0.1.3-3.tar.gz";
    name = "0.1.3-3.tar.gz";
    sha256 = "dc9076627c8cb54d1fc3e0d3c4eab854f2a48d0aa12bd261fc0a678ce794b85b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dual-quaternions geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS msgs from and to dual quaternions'';
    license = with lib.licenses; [ mit ];
  };
}
