
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake, libsForQt5, octomap, qt5 }:
buildRosPackage {
  pname = "ros-foxy-octovis";
  version = "1.9.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap-release/archive/release/foxy/octovis/1.9.7-1.tar.gz";
    name = "1.9.7-1.tar.gz";
    sha256 = "792c48dc5943a326194f72f5efa22cd37f4dd4c8e073e659e599a09e8f4be52e";
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
