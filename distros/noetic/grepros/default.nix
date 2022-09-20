
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genpy, python3Packages, rosbag, roslib, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-grepros";
  version = "0.4.7-r1";

  src = fetchurl {
    url = "https://github.com/suurjaak/grepros-release/archive/release/noetic/grepros/0.4.7-1.tar.gz";
    name = "0.4.7-1.tar.gz";
    sha256 = "6d40147184d6eaff7b1912ca40cfed946127325c81c5cb00769e0619b5abc04d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest std-msgs ];
  propagatedBuildInputs = [ genpy python3Packages.pyyaml rosbag roslib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''grep for ROS bag files and live topics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
