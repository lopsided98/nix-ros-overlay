
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, libsForQt5, octomap, qt5 }:
buildRosPackage {
  pname = "ros-foxy-octovis";
  version = "1.9.5-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap-release/archive/release/foxy/octovis/1.9.5-2.tar.gz";
    name = "1.9.5-2.tar.gz";
    sha256 = "72d466eb350fd1e84b32aa8d1d3d1e87eca8735a4712cbc00de8c00846d590f3";
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
