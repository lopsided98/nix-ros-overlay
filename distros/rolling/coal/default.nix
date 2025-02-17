
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, cmake, doxygen, eigen, eigenpy, git, octomap, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-coal";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/coal-release/archive/release/rolling/coal/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "02b070efd4bc0a4ba7f6e2811357d1044cf672b5164117ef0ac2031fd014c878";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git python3Packages.lxml ];
  propagatedBuildInputs = [ assimp boost eigen eigenpy octomap python3 python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "An extension of the Flexible Collision Library.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
