
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, jsk-interactive, catkin, rviz, visualization-msgs, rospy, rosbuild, jsk-interactive-marker, mk }:
buildRosPackage {
  pname = "ros-kinetic-jsk-interactive-test";
  version = "2.1.5";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/jsk_interactive_test/2.1.5-0.tar.gz";
    name = "2.1.5-0.tar.gz";
    sha256 = "737f4c1e45cbce834250e2adc1244b99a01d2e604bb1276859058c6678b50408";
  };

  buildType = "catkin";
  buildInputs = [ jsk-interactive visualization-msgs rospy rosbuild jsk-interactive-marker mk ];
  propagatedBuildInputs = [ jsk-interactive rviz visualization-msgs rospy jsk-interactive-marker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_interactive_test'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
