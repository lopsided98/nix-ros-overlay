
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, libGL, libGLU, libsForQt5, octomap, qt5 }:
buildRosPackage {
  pname = "ros-rolling-octovis";
  version = "1.10.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap-release/archive/release/rolling/octovis/1.10.0-3.tar.gz";
    name = "1.10.0-3.tar.gz";
    sha256 = "bb5d68a66a4ad60ebc7cfbc4deffa5f6a70ebe648d17d199e6932438e6a35a09";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ libGL libGLU libsForQt5.libqglviewer octomap qt5.qtbase ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "octovis is visualization tool for the OctoMap library based on Qt and libQGLViewer. See
  http://octomap.github.io for details.";
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
