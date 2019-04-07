
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, openscenegraph, roscpp, roslib, visualization-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-osg-markers";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/uji-ros-pkg/visualization_osg-release/archive/release/kinetic/osg_markers/1.0.2-0.tar.gz;
    sha256 = "fe9a3e9e95560170f90486fbe707f734c1b983a35912ef2425e8992f4147d0a2";
  };

  buildInputs = [ visualization-msgs tf roslib openscenegraph roscpp ];
  propagatedBuildInputs = [ visualization-msgs tf roslib openscenegraph roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''osg_markers can be used to create Markers geometry in OSG.'';
    #license = lib.licenses.BSD;
  };
}
