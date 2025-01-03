
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, glew, libjpeg_turbo, libpng, libxkbcommon, python3, wayland }:
buildRosPackage {
  pname = "ros-rolling-pangolin";
  version = "0.9.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Pangolin-release/archive/release/rolling/pangolin/0.9.1-2.tar.gz";
    name = "0.9.1-2.tar.gz";
    sha256 = "467e5963132c397e2db811da25fa160154e8f358fada5ee8bfe6c2a3060d4edf";
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
