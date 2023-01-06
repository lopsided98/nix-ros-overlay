
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, catkin, cmake, doxygen, eigen, eigenpy, git, octomap, python3, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-hpp-fcl";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/humanoid-path-planner/hpp-fcl-ros-release/archive/release/noetic/hpp-fcl/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "66aaa2fb542f7619cfa86943f41c932deb3bd479d956ef877313411c4a71b1c8";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git python3Packages.lxml ];
  propagatedBuildInputs = [ assimp boost catkin eigen eigenpy octomap python3 python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''An extension of the Flexible Collision Library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
