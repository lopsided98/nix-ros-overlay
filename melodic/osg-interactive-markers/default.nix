
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, osg-utils, catkin, osg-markers, openscenegraph, roscpp, interactive-markers, visualization-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-osg-interactive-markers";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/visualization_osg-release/archive/release/melodic/osg_interactive_markers/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "6dc9ecba42a544deb8ecc44e8aac484d78dde854db547d338fa4f11fa5d6123f";
  };

  buildType = "catkin";
  buildInputs = [ osg-utils tf openscenegraph osg-markers interactive-markers visualization-msgs roscpp ];
  propagatedBuildInputs = [ osg-utils tf openscenegraph osg-markers interactive-markers visualization-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is basically an OpenSceneGraph (OSG) adaptation of the Interactive Markers client writen for rviz/Ogre.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
