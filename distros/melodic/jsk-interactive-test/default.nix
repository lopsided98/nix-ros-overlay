
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jsk-interactive, jsk-interactive-marker, mk, rosbuild, rospy, rviz, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-jsk-interactive-test";
  version = "2.1.7-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/melodic/jsk_interactive_test/2.1.7-1.tar.gz";
    name = "2.1.7-1.tar.gz";
    sha256 = "1062efda1c58f865d62cef6b7a9d26e3310272772b16b54a540315848298db62";
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
