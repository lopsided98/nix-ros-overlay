
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mk, catkin, rosbuild, rviz, jsk-interactive-marker, rospy, visualization-msgs, jsk-interactive }:
buildRosPackage {
  pname = "ros-melodic-jsk-interactive-test";
  version = "2.1.5";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_visualization-release/archive/release/melodic/jsk_interactive_test/2.1.5-0.tar.gz;
    sha256 = "5f1a01af87786761626dae0bf1e263553bcdf2e57234cbe55f1273dc523d1104";
  };

  buildInputs = [ jsk-interactive-marker visualization-msgs rospy mk rosbuild jsk-interactive ];
  propagatedBuildInputs = [ rviz jsk-interactive-marker rospy visualization-msgs jsk-interactive ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_interactive_test'';
    #license = lib.licenses.BSD;
  };
}
