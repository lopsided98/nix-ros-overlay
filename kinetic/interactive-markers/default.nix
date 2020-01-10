
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosconsole, roscpp, rospy, rostest, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-interactive-markers";
  version = "1.11.4";

  src = fetchurl {
    url = "https://github.com/ros-gbp/interactive_markers-release/archive/release/kinetic/interactive_markers/1.11.4-0.tar.gz";
    name = "1.11.4-0.tar.gz";
    sha256 = "d63c3b1b745d47e2b3e107a00df9ce8b858cb40403866638c04640cbbe990ddb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosconsole roscpp rospy rostest std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3D interactive marker communication library for RViz and similar tools.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
