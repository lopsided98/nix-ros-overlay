
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, openscenegraph, roscpp, roslib, visualization-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-osg-markers";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/visualization_osg-release/archive/release/melodic/osg_markers/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "9b0a76c1c388cb8d13d574ebef9bf50bb1ff15f98f29d3b365a5c77d039f2e50";
  };

  buildType = "catkin";
  buildInputs = [ openscenegraph roscpp roslib visualization-msgs tf ];
  propagatedBuildInputs = [ tf openscenegraph roscpp visualization-msgs roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''osg_markers can be used to create Markers geometry in OSG.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
