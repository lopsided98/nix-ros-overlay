
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jsk-interactive, jsk-interactive-marker, mk, rosbuild, rospy, rviz, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-jsk-interactive-test";
  version = "2.1.7-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/melodic/jsk_interactive_test/2.1.7-2.tar.gz";
    name = "2.1.7-2.tar.gz";
    sha256 = "7e0a0fb246e712b8b7f56a170a046a771af8a4392486220ebb750aa13235c2ec";
  };

  buildType = "catkin";
  buildInputs = [ mk rosbuild ];
  propagatedBuildInputs = [ jsk-interactive jsk-interactive-marker rospy rviz visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_interactive_test'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
