
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, cmake, doxygen, eigen, eigenpy, git, octomap, python3, python3Packages }:
buildRosPackage {
  pname = "ros-galactic-hpp-fcl";
  version = "2.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hpp_fcl-release/archive/release/galactic/hpp-fcl/2.1.2-2.tar.gz";
    name = "2.1.2-2.tar.gz";
    sha256 = "b82849eab526970ade3e8d931dfb52203828860ba4bf79d023915e58324a4856";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git python3Packages.lxml ];
  propagatedBuildInputs = [ assimp boost eigen eigenpy octomap python3 python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''An extension of the Flexible Collision Library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
