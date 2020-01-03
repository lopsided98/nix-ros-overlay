
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jsk-interactive, jsk-interactive-marker, mk, rosbuild, rospy, rviz, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-jsk-interactive-test";
  version = "2.1.5";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/melodic/jsk_interactive_test/2.1.5-0.tar.gz";
    name = "2.1.5-0.tar.gz";
    sha256 = "5f1a01af87786761626dae0bf1e263553bcdf2e57234cbe55f1273dc523d1104";
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
