
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, python3Packages, roslib, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-inorbit-republisher";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/inorbit-ai/ros_inorbit_samples-release/archive/release/noetic/inorbit_republisher/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "a34967b1e7832b2bc1b9e6000de8e9c7283c47f2eae0d8f6b0c3f579af0d1c2e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs python3Packages.pyyaml roslib rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS to InOrbit topic republisher'';
    license = with lib.licenses; [ mit ];
  };
}
