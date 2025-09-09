
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rospy }:
buildRosPackage {
  pname = "ros-noetic-chaplus-ros";
  version = "2.1.31-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/chaplus_ros/2.1.31-3.tar.gz";
    name = "2.1.31-3.tar.gz";
    sha256 = "0e4cd676fb2aa2db64a925013e52ee000c6e0f2731407e82936fa1612bd28cb7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python3Packages.requests rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The ROS package for chaplus service";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
