
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catch2, cmake, eigen, glew, libGL, libGLU, libepoxy, libjpeg_turbo, libpng, libxkbcommon, python3, python3Packages, wayland }:
buildRosPackage {
  pname = "ros-kilted-pangolin";
  version = "0.9.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Pangolin-release/archive/release/kilted/pangolin/0.9.3-2.tar.gz";
    name = "0.9.3-2.tar.gz";
    sha256 = "bf8e9fc55a806486e0f65b61701bd6df8fed0309c3de873fd1e78cb370e979ae";
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
