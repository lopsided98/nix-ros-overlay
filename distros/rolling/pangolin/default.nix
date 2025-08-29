
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catch2, cmake, eigen, glew, libGL, libGLU, libepoxy, libjpeg_turbo, libpng, libxkbcommon, python3, python3Packages, wayland }:
buildRosPackage {
  pname = "ros-rolling-pangolin";
  version = "0.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Pangolin-release/archive/release/rolling/pangolin/0.9.3-1.tar.gz";
    name = "0.9.3-1.tar.gz";
    sha256 = "2e19a13e8b99e5879067bb88b234fef66f6dbaec6bbdf7052edd50bfa532222d";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3Packages.wheel ];
  checkInputs = [ catch2 ];
  propagatedBuildInputs = [ glew libGL libGLU libepoxy libjpeg_turbo libpng libxkbcommon python3 wayland ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Pangolin is a set of lightweight and portable utility libraries for prototyping 3D, numeric or video based programs and algorithms.";
    license = with lib.licenses; [ mit ];
  };
}
