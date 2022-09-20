
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, python3Packages, roslib, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-inorbit-republisher";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/inorbit-ai/ros_inorbit_samples-release/archive/release/noetic/inorbit_republisher/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "ab97b01aeeb56aeb52012f4a293f300fe793e250a9355ce211e50ec94312ed7f";
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
