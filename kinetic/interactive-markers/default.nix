
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, catkin, roscpp, rostest, visualization-msgs, rospy, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-interactive-markers";
  version = "1.11.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/interactive_markers-release/archive/release/kinetic/interactive_markers/1.11.4-0.tar.gz;
    sha256 = "d63c3b1b745d47e2b3e107a00df9ce8b858cb40403866638c04640cbbe990ddb";
  };

  buildInputs = [ rostest rosconsole visualization-msgs rospy std-msgs tf roscpp ];
  propagatedBuildInputs = [ rostest rosconsole visualization-msgs rospy std-msgs tf roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3D interactive marker communication library for RViz and similar tools.'';
    #license = lib.licenses.BSD;
  };
}
