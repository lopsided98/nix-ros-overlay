
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, cmake, doxygen, eigen, eigenpy, git, octomap, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-coal";
  version = "3.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/coal-release/archive/release/kilted/coal/3.0.1-2.tar.gz";
    name = "3.0.1-2.tar.gz";
    sha256 = "6bfb40a22326ebbf8f6fe90d920ab612a80de24bc10a193eaa19012e4c18e7bb";
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
