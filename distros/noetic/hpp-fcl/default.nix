
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, catkin, cmake, doxygen, eigen, eigenpy, git, octomap, python3, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-hpp-fcl";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/humanoid-path-planner/hpp-fcl-ros-release/archive/release/noetic/hpp-fcl/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "6638c9e5e5ad0517eefe6abc79b008af595b6f2acf3d13d65cf434d7dba5bbc9";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git python3Packages.lxml ];
  propagatedBuildInputs = [ assimp boost catkin eigen eigenpy octomap python3 python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''An extension of the Flexible Collision Library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
