
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jsk-interactive, jsk-interactive-marker, mk, rosbuild, rospy, rviz, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-jsk-interactive-test";
  version = "2.1.7-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/jsk_interactive_test/2.1.7-1.tar.gz";
    name = "2.1.7-1.tar.gz";
    sha256 = "6c516534824c0e1772db45c2661a12ef20b6b7f93e89beee2edb7b8804e1fb2a";
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
