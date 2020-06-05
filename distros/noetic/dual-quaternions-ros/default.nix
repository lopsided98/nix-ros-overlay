
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dual-quaternions, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-noetic-dual-quaternions-ros";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/Achllle/dual_quaternions_ros-release/archive/release/noetic/dual_quaternions_ros/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "ecaf4f689fa6bde65227f924c43e933bd8e1cf836e407a79c66f5efb88bcc66c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dual-quaternions geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS msgs from and to dual quaternions'';
    license = with lib.licenses; [ mit ];
  };
}
