
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mk, catkin, rosbuild, dynamic-tf-publisher, jsk-interactive-marker, actionlib, rospy, visualization-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-jsk-interactive";
  version = "2.1.5";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_visualization-release/archive/release/melodic/jsk_interactive/2.1.5-0.tar.gz;
    sha256 = "739be630c6e56f915493551f092539377bfc8a224ddc9952b517e223952af8eb";
  };

  buildInputs = [ mk rosbuild dynamic-tf-publisher jsk-interactive-marker actionlib rospy visualization-msgs geometry-msgs ];
  propagatedBuildInputs = [ dynamic-tf-publisher jsk-interactive-marker actionlib rospy visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_interactive'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
