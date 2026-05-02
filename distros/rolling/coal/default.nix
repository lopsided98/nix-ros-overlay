
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, cmake, doxygen, eigen, eigenpy, git, octomap, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-coal";
  version = "3.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/coal-release/archive/release/rolling/coal/3.0.2-2.tar.gz";
    name = "3.0.2-2.tar.gz";
    sha256 = "343f6a6fc4429c5e65b6a3fc5a88491cee92ef92a3d9c4c40c62bf6ff08fcb5b";
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
