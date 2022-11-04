
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosconsole, roscpp, rospy, rostest, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-interactive-markers";
  version = "1.11.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/interactive_markers-release/archive/release/melodic/interactive_markers/1.11.5-1.tar.gz";
    name = "1.11.5-1.tar.gz";
    sha256 = "65b162af44f44a38bd0015ea4aa50a9d14441599a91f9b23781084be1a0d5d3f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rosconsole roscpp rospy rostest std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3D interactive marker communication library for RViz and similar tools.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
