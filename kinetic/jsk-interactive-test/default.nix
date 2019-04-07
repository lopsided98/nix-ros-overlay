
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mk, catkin, rosbuild, rviz, jsk-interactive-marker, rospy, visualization-msgs, jsk-interactive }:
buildRosPackage {
  pname = "ros-kinetic-jsk-interactive-test";
  version = "2.1.5";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/jsk_interactive_test/2.1.5-0.tar.gz;
    sha256 = "737f4c1e45cbce834250e2adc1244b99a01d2e604bb1276859058c6678b50408";
  };

  buildInputs = [ jsk-interactive-marker visualization-msgs rospy mk rosbuild jsk-interactive ];
  propagatedBuildInputs = [ rviz jsk-interactive-marker rospy visualization-msgs jsk-interactive ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_interactive_test'';
    #license = lib.licenses.BSD;
  };
}
