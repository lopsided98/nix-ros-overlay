
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, dynamic-tf-publisher, actionlib, catkin, visualization-msgs, rospy, rosbuild, jsk-interactive-marker, mk }:
buildRosPackage {
  pname = "ros-melodic-jsk-interactive";
  version = "2.1.5";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/melodic/jsk_interactive/2.1.5-0.tar.gz";
    name = "2.1.5-0.tar.gz";
    sha256 = "739be630c6e56f915493551f092539377bfc8a224ddc9952b517e223952af8eb";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs dynamic-tf-publisher actionlib visualization-msgs rospy rosbuild jsk-interactive-marker mk ];
  propagatedBuildInputs = [ geometry-msgs dynamic-tf-publisher actionlib visualization-msgs rospy jsk-interactive-marker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_interactive'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
