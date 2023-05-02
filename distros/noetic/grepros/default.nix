
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genpy, python3Packages, rosbag, roslib, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-grepros";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://github.com/suurjaak/grepros-release/archive/release/noetic/grepros/0.6.0-2.tar.gz";
    name = "0.6.0-2.tar.gz";
    sha256 = "94c1ce2bbb5206d82a4db272fdf69c9151991480d76f7f2ba8fc7c21738e875e";
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
