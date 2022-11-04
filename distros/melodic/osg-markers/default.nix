
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, openscenegraph, roscpp, roslib, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-osg-markers";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/visualization_osg-release/archive/release/melodic/osg_markers/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "173f82925c40381484abd5d53668fd56033792b15e66c5323a19f7c9ec3dc89d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ openscenegraph roscpp roslib tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''osg_markers can be used to create Markers geometry in OSG.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
