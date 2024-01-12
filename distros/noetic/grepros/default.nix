
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genpy, python3Packages, rosbag, roslib, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-grepros";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/suurjaak/grepros-release/archive/release/noetic/grepros/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "59e3e47c6ac9a20a1bec9d3ad438669968949ded0de55cdea8663cc72ce9d472";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest std-msgs ];
  propagatedBuildInputs = [ genpy python3Packages.pyyaml python3Packages.six rosbag roslib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''grep for ROS bag files and live topics: read, filter, export'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
