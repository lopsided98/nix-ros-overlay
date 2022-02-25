
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, python3Packages, roslib, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-inorbit-republisher";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/inorbit-ai/ros_inorbit_samples-release/archive/release/noetic/inorbit_republisher/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "d7e9bd3a8fbf3a202a6177d5dd36a136b417028e12be0a085092b15fb2e3fc53";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs python3Packages.pyyaml python3Packages.rospkg roslib rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS to InOrbit topic republisher'';
    license = with lib.licenses; [ mit ];
  };
}
