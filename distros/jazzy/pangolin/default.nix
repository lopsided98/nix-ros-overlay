
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catch2, cmake, eigen, glew, libGL, libGLU, libepoxy, libjpeg, libpng, libxkbcommon, python3, python3Packages, wayland }:
buildRosPackage {
  pname = "ros-jazzy-pangolin";
  version = "0.9.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Pangolin-release/archive/release/jazzy/pangolin/0.9.5-1.tar.gz";
    name = "0.9.5-1.tar.gz";
    sha256 = "202de34075c91adfba07ec8612a1adbe3612d50de4f5ecb79186495ba99baf37";
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
