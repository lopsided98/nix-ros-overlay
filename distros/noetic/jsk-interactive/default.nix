
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, dynamic-tf-publisher, geometry-msgs, jsk-interactive-marker, mk, rosbuild, rospy, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-jsk-interactive";
  version = "2.1.8-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/noetic/jsk_interactive/2.1.8-1.tar.gz";
    name = "2.1.8-1.tar.gz";
    sha256 = "ade9c8c7968de594d1f5ca67d8bda9adb2570635b1f35141004f5dabbe0a6eff";
  };

  buildType = "catkin";
  buildInputs = [ catkin mk rosbuild ];
  propagatedBuildInputs = [ actionlib dynamic-tf-publisher geometry-msgs jsk-interactive-marker rospy visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_interactive'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
