
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, dynamic-tf-publisher, geometry-msgs, jsk-interactive-marker, mk, rosbuild, rospy, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-jsk-interactive";
  version = "2.1.10-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/noetic/jsk_interactive/2.1.10-1.tar.gz";
    name = "2.1.10-1.tar.gz";
    sha256 = "1696757c033bb76ed4eb302258ca93422fea727cfd63603f9fc1377048f438f4";
  };

  buildType = "catkin";
  buildInputs = [ catkin mk rosbuild ];
  propagatedBuildInputs = [ actionlib dynamic-tf-publisher geometry-msgs jsk-interactive-marker rospy visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "jsk_interactive";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
