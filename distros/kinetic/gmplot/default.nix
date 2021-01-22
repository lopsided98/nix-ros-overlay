
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy }:
buildRosPackage {
  pname = "ros-kinetic-gmplot";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/robustify/gmplot_ros-release/archive/release/kinetic/gmplot/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "b73fbb676cee85ef6d2fc2e658ee6bc8928dff8d2b2b14efde44870c752364f6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS wrapping of gmplot library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
