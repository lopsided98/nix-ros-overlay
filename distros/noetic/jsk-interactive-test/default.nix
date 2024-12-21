
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jsk-interactive, jsk-interactive-marker, mk, rosbuild, rospy, rviz, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-jsk-interactive-test";
  version = "2.1.10-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/noetic/jsk_interactive_test/2.1.10-1.tar.gz";
    name = "2.1.10-1.tar.gz";
    sha256 = "cc7e3a9fffe8d000d534dc76f15fd06370a00ce39904d80d1a8e49a835a04da6";
  };

  buildType = "catkin";
  buildInputs = [ catkin mk rosbuild ];
  propagatedBuildInputs = [ jsk-interactive jsk-interactive-marker rospy rviz visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "jsk_interactive_test";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
