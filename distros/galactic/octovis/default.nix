
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake, libsForQt5, octomap, qt5 }:
buildRosPackage {
  pname = "ros-galactic-octovis";
  version = "1.9.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap-release/archive/release/galactic/octovis/1.9.7-1.tar.gz";
    name = "1.9.7-1.tar.gz";
    sha256 = "06e6523f0fd18be71735ae45910cbfce375069c179503121d1369c56b0cbbebe";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ ament-cmake libsForQt5.libqglviewer octomap qt5.qtbase ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''octovis is visualization tool for the OctoMap library based on Qt and libQGLViewer. See
  http://octomap.github.io for details.'';
    license = with lib.licenses; [ gpl2 ];
  };
}
