
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, libsForQt5, octomap, qt5 }:
buildRosPackage {
  pname = "ros-noetic-octovis";
  version = "1.9.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap-release/archive/release/noetic/octovis/1.9.6-1.tar.gz";
    name = "1.9.6-1.tar.gz";
    sha256 = "feb098684affecd77636c6992084628036bf9101a41a42438723bb855b77401a";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ libsForQt5.libqglviewer octomap qt5.qtbase ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''octovis is visualization tool for the OctoMap library based on Qt and libQGLViewer. See
  http://octomap.github.io for details.'';
    license = with lib.licenses; [ gpl2 ];
  };
}
