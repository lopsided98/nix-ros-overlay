
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, libsForQt5, octomap, qt5 }:
buildRosPackage {
  pname = "ros-noetic-octovis";
  version = "1.9.6-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap-release/archive/release/noetic/octovis/1.9.6-2.tar.gz";
    name = "1.9.6-2.tar.gz";
    sha256 = "6fb47ca3b08da643c13d00d9a7c0ecd5454ddb05ab30247bd9bf753d69701713";
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
