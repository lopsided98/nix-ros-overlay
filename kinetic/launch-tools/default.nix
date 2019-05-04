
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslib, catkin, rospy }:
buildRosPackage {
  pname = "ros-kinetic-launch-tools";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/srv/srv_tools-release/archive/release/kinetic/launch_tools/0.0.3-0.tar.gz;
    sha256 = "39802253ffe256d4f061497bb3211da77348bad55a6d533e0d502cd777cc3419";
  };

  buildInputs = [ roslib rospy ];
  propagatedBuildInputs = [ roslib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS tools and scripts related to launchfiles'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
