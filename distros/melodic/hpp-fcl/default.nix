
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, catkin, cmake, doxygen, eigen, eigenpy, git, octomap, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-hpp-fcl";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/humanoid-path-planner/hpp-fcl-ros-release/archive/release/melodic/hpp-fcl/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "e3721312c1b3ae8bd2598a6a395fbe851c071c2a6e06dd2e39a7eb65c6d673c4";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git pythonPackages.lxml ];
  propagatedBuildInputs = [ assimp boost catkin eigen eigenpy octomap python pythonPackages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''An extension of the Flexible Collision Library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
