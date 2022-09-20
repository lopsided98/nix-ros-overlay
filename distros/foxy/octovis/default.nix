
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, libsForQt5, octomap, qt5 }:
buildRosPackage {
  pname = "ros-foxy-octovis";
  version = "1.9.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap-release/archive/release/foxy/octovis/1.9.8-1.tar.gz";
    name = "1.9.8-1.tar.gz";
    sha256 = "c3d44b01d9b95bbeaffa4fb05e1fd789658d3db59e1320e481a1abbbbbd8ae8b";
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
