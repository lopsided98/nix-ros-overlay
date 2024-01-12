
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosconsole, roscpp, rospy, rostest, std-msgs, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-interactive-markers";
  version = "1.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/interactive_markers-release/archive/release/noetic/interactive_markers/1.12.0-1.tar.gz";
    name = "1.12.0-1.tar.gz";
    sha256 = "d4a8ca9eb762c228712bd9479147db3a73b0cafcf526c926fb406a2bc523ce87";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rosconsole roscpp rospy rostest std-msgs tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3D interactive marker communication library for RViz and similar tools.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
