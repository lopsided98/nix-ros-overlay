
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, libsForQt5, octomap, qt5 }:
buildRosPackage {
  pname = "ros-humble-octovis";
  version = "1.9.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap-release/archive/release/humble/octovis/1.9.8-1.tar.gz";
    name = "1.9.8-1.tar.gz";
    sha256 = "0fc7d234141ccfe21aeeecfa1c9863f1c52f0b38301865edf7562061689051e3";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ libsForQt5.libqglviewer octomap qt5.qtbase ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''octovis is visualization tool for the OctoMap library based on Qt and libQGLViewer. See
  http://octomap.github.io for details.'';
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
