
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, osg-interactive-markers, osg-markers, osg-utils }:
buildRosPackage {
  pname = "ros-melodic-visualization-osg";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/visualization_osg-release/archive/release/melodic/visualization_osg/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "49cee62d712e9d538aaac8ce03c2222705074e11365f6c89d108dfb2decbf164";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ osg-interactive-markers osg-markers osg-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''visualization_osg is a metapackage providing support for visualization of geometry using the OpenSceneGraph rendering engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
