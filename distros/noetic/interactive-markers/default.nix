
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rosconsole, roscpp, rospy, rostest, std-msgs, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-interactive-markers";
  version = "1.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/interactive_markers-release/archive/release/noetic/interactive_markers/1.12.1-1.tar.gz";
    name = "1.12.1-1.tar.gz";
    sha256 = "0b7993123eb4ed27cfe20b8e249acb3725982e61bc4b7f9de2dc89baba1eb533";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ rosconsole roscpp rospy rostest std-msgs tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "3D interactive marker communication library for RViz and similar tools.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
