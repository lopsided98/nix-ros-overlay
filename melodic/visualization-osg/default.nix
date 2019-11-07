
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, osg-interactive-markers, osg-utils, osg-markers, catkin }:
buildRosPackage {
  pname = "ros-melodic-visualization-osg";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/visualization_osg-release/archive/release/melodic/visualization_osg/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "146a2eba78be5ecaa092885cdb2026a4b9ce35e37602789539e3729147c0d748";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ osg-interactive-markers osg-utils osg-markers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''visualization_osg is a metapackage providing support for visualization of geometry using the OpenSceneGraph rendering engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
