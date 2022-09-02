
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, catkin, cmake, doxygen, eigen, eigenpy, git, octomap, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-hpp-fcl";
  version = "1.8.1-r1";

  src = fetchurl {
    url = "https://github.com/humanoid-path-planner/hpp-fcl-ros-release/archive/release/melodic/hpp-fcl/1.8.1-1.tar.gz";
    name = "1.8.1-1.tar.gz";
    sha256 = "594d688b680ff946d06f8ddd0ccebd41ea887af0ad261efc5a097b10b4a97e8b";
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
