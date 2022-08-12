
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, cmake, doxygen, eigen, eigenpy, git, octomap, python3, python3Packages }:
buildRosPackage {
  pname = "ros-galactic-hpp-fcl";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hpp_fcl-release/archive/release/galactic/hpp-fcl/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "756f9738ecb04148206c2b261e8213044b91e4254b311fd032a538fe0a79e021";
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
