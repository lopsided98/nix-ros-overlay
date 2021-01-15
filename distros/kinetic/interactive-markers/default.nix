
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosconsole, roscpp, rospy, rostest, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-interactive-markers";
  version = "1.11.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/interactive_markers-release/archive/release/kinetic/interactive_markers/1.11.5-1.tar.gz";
    name = "1.11.5-1.tar.gz";
    sha256 = "9ba7ace87327d7d82d8376e02675178d6f68274621522f84e1bcd8b84ce01b39";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosconsole roscpp rospy rostest std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3D interactive marker communication library for RViz and similar tools.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
