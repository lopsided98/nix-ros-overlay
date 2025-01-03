
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, libGL, libGLU, libsForQt5, octomap, qt5 }:
buildRosPackage {
  pname = "ros-jazzy-octovis";
  version = "1.10.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap-release/archive/release/jazzy/octovis/1.10.0-4.tar.gz";
    name = "1.10.0-4.tar.gz";
    sha256 = "4668d2d97e0bcb0fbb61f871d1c429cca9c14d2fd1adfa4e64efb5d25d8878b0";
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
