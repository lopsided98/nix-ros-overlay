
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, interactive-markers, catkin, tf, visualization-msgs, roscpp, openscenegraph, osg-markers, osg-utils }:
buildRosPackage {
  pname = "ros-melodic-osg-interactive-markers";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/visualization_osg-release/archive/release/melodic/osg_interactive_markers/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "44a8e53e5774686511ade483b0c58ad488edaa6abb7d14d889f61fa0671ed9ec";
  };

  buildType = "catkin";
  buildInputs = [ interactive-markers tf visualization-msgs roscpp openscenegraph osg-markers osg-utils ];
  propagatedBuildInputs = [ interactive-markers tf visualization-msgs roscpp openscenegraph osg-markers osg-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is basically an OpenSceneGraph (OSG) adaptation of the Interactive Markers client writen for rviz/Ogre.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
