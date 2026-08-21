
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catch2, cmake, eigen, glew, libGL, libGLU, libepoxy, libjpeg, libpng, libxkbcommon, openexr, python3, python3Packages, wayland }:
buildRosPackage {
  pname = "ros-lyrical-pangolin";
  version = "0.9.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Pangolin-release/archive/release/lyrical/pangolin/0.9.6-1.tar.gz";
    name = "0.9.6-1.tar.gz";
    sha256 = "cd014d43ee5fd654c9f16dcd696020c85326bd429bdf347fab51dded2b89e906";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3Packages.setuptools python3Packages.wheel ];
  checkInputs = [ catch2 ];
  propagatedBuildInputs = [ glew libGL libGLU libepoxy libjpeg libpng libxkbcommon openexr python3 wayland ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Pangolin is a set of lightweight and portable utility libraries for prototyping 3D, numeric or video based programs and algorithms.";
    license = with lib.licenses; [ mit ];
  };
}
