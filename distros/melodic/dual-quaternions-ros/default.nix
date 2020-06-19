
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dual-quaternions, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-dual-quaternions-ros";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/Achllle/dual_quaternions_ros-release/archive/release/melodic/dual_quaternions_ros/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "93084d18038c68680ace921c976e5ea15f86072c59c40e1a0f61fb978a69c1ee";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dual-quaternions geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS msgs from and to dual quaternions'';
    license = with lib.licenses; [ mit ];
  };
}
