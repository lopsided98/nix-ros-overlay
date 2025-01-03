
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, glew, libjpeg_turbo, libpng, libxkbcommon, python3, wayland }:
buildRosPackage {
  pname = "ros-humble-pangolin";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Pangolin-release/archive/release/humble/pangolin/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "30fac32266d7a371c6373fd0ce5bcbeb17f4523b3c6c521065fc9138a157941c";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ glew libjpeg_turbo libpng libxkbcommon python3 wayland ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Pangolin is a set of lightweight and portable utility libraries for prototyping 3D, numeric or video based programs and algorithms.";
    license = with lib.licenses; [ mit ];
  };
}
