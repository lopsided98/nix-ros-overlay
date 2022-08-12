
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, catkin, cmake, doxygen, eigen, eigenpy, git, octomap, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-hpp-fcl";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/humanoid-path-planner/hpp-fcl-ros-release/archive/release/melodic/hpp-fcl/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "a7e3aa9e0d272bc7af7229b9036d1417ec49ec51469b8a718d910f9f1928bda1";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git pythonPackages.lxml ];
  propagatedBuildInputs = [ assimp boost catkin eigen eigenpy octomap python pythonPackages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''An extension of the Flexible Collision Library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
