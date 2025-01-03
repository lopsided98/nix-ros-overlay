
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, glew, libjpeg_turbo, libpng, libxkbcommon, python3, wayland }:
buildRosPackage {
  pname = "ros-jazzy-pangolin";
  version = "0.9.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Pangolin-release/archive/release/jazzy/pangolin/0.9.1-3.tar.gz";
    name = "0.9.1-3.tar.gz";
    sha256 = "0768b55f47152be5fab5889f558cd1eccb576cd0934e0326a9341bb8866a1c3a";
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
