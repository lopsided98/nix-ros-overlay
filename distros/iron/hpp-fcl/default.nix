
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, cmake, doxygen, eigen, eigenpy, git, octomap, python3, python3Packages }:
buildRosPackage {
  pname = "ros-iron-hpp-fcl";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hpp_fcl-release/archive/release/iron/hpp-fcl/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "eca39b56b89fbde81ebf07dbc9f8bde61563684c7a939db88f1f4ec1c3f04483";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git python3Packages.lxml ];
  propagatedBuildInputs = [ assimp boost eigen eigenpy octomap python3 python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''An extension of the Flexible Collision Library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
