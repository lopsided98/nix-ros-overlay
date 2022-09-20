
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, dynamic-tf-publisher, geometry-msgs, jsk-interactive-marker, mk, rosbuild, rospy, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-jsk-interactive";
  version = "2.1.8-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/melodic/jsk_interactive/2.1.8-1.tar.gz";
    name = "2.1.8-1.tar.gz";
    sha256 = "5ba59c717424d8864d93e9a1bd2f8347a7532f016de3981841adf7c46cd54029";
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
