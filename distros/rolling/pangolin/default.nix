
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catch2, cmake, eigen, glew, libGL, libGLU, libepoxy, libjpeg, libpng, libxkbcommon, python3, python3Packages, wayland }:
buildRosPackage {
  pname = "ros-rolling-pangolin";
  version = "0.9.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Pangolin-release/archive/release/rolling/pangolin/0.9.5-2.tar.gz";
    name = "0.9.5-2.tar.gz";
    sha256 = "2fd0bf9deddeffe4b642ab46f2d685e87c5413aab52fc13787eedd28ff400ac4";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3Packages.wheel ];
  checkInputs = [ catch2 ];
  propagatedBuildInputs = [ glew libGL libGLU libepoxy libjpeg libpng libxkbcommon python3 wayland ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Pangolin is a set of lightweight and portable utility libraries for prototyping 3D, numeric or video based programs and algorithms.";
    license = with lib.licenses; [ mit ];
  };
}
