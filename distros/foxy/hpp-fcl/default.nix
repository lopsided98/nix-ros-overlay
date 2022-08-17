
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, cmake, doxygen, eigen, eigenpy, git, octomap, python3, python3Packages }:
buildRosPackage {
  pname = "ros-foxy-hpp-fcl";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hpp_fcl-release/archive/release/foxy/hpp-fcl/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "7d5d7046ec31f5dba8d071b2ec24459a4ae0f4dda7e094cde166ca1750934402";
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
