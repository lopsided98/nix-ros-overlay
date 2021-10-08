
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, roslib, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-inorbit-republisher";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/inorbit-ai/ros_inorbit_samples-release/archive/release/melodic/inorbit_republisher/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "3cb5d5fc327542c8fece9309e5c6a91d0656bcfc5a917d1cb23c884d363b6d11";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python3Packages.pyyaml roslib rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS to InOrbit topic republisher'';
    license = with lib.licenses; [ mit ];
  };
}
