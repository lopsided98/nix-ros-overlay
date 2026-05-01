
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catch2, cmake, eigen, glew, libGL, libGLU, libepoxy, libjpeg, libpng, libxkbcommon, python3, python3Packages, wayland }:
buildRosPackage {
  pname = "ros-lyrical-pangolin";
  version = "0.9.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Pangolin-release/archive/release/lyrical/pangolin/0.9.5-3.tar.gz";
    name = "0.9.5-3.tar.gz";
    sha256 = "95022ccefd9b9c34304a25e2d8aaae8a3a2c5957e2b85d1224d0c9013fe96a72";
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
