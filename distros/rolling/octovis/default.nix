
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, libsForQt5, octomap, qt5 }:
buildRosPackage {
  pname = "ros-rolling-octovis";
  version = "1.9.8-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap-release/archive/release/rolling/octovis/1.9.8-3.tar.gz";
    name = "1.9.8-3.tar.gz";
    sha256 = "72c9f47bc3ce2a6995579248b640de36b40175142a37f5fe37eed73818b1e6e2";
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
