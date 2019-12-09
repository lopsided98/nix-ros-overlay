
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, osg-interactive-markers, catkin, osg-markers, osg-utils }:
buildRosPackage {
  pname = "ros-kinetic-visualization-osg";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/visualization_osg-release/archive/release/kinetic/visualization_osg/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "d7ef3241bf680df325db7cc7496308c8c261ab4b2524c6e6b674cada7c85f32e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ osg-utils osg-markers osg-interactive-markers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''visualization_osg is a metapackage providing support for visualization of geometry using the OpenSceneGraph rendering engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
