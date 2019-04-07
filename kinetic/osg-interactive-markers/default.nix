
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, osg-utils, catkin, osg-markers, openscenegraph, roscpp, interactive-markers, visualization-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-osg-interactive-markers";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/uji-ros-pkg/visualization_osg-release/archive/release/kinetic/osg_interactive_markers/1.0.2-0.tar.gz;
    sha256 = "61e77c9b041cda3c946fb1358527e33f7551875f3f2202d7f823c521419aba25";
  };

  buildInputs = [ osg-markers osg-utils interactive-markers visualization-msgs tf roscpp openscenegraph ];
  propagatedBuildInputs = [ osg-markers osg-utils interactive-markers visualization-msgs tf roscpp openscenegraph ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is basically an OpenSceneGraph (OSG) adaptation of the Interactive Markers client writen for rviz/Ogre.'';
    #license = lib.licenses.BSD;
  };
}
