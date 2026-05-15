
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, cmake, doxygen, eigen, eigenpy, git, octomap, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-coal";
  version = "3.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/coal-release/archive/release/kilted/coal/3.0.3-2.tar.gz";
    name = "3.0.3-2.tar.gz";
    sha256 = "bcde4f3aac0346e392150855487427f61b5f4a0c12c3636be1672949c8a8b240";
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
