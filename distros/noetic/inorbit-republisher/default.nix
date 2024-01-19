
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, python3Packages, roslib, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-inorbit-republisher";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/inorbit-ai/ros_inorbit_samples-release/archive/release/noetic/inorbit_republisher/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "b420da2301282b41147d5215ba8c3325acb09083f41cae41dcd8c4529c647197";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.pyyaml python3Packages.rospkg roslib rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS to InOrbit topic republisher'';
    license = with lib.licenses; [ mit ];
  };
}
