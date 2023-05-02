
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, cmake, doxygen, eigen, eigenpy, git, octomap, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-hpp-fcl";
  version = "2.3.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hpp_fcl-release/archive/release/rolling/hpp-fcl/2.3.0-4.tar.gz";
    name = "2.3.0-4.tar.gz";
    sha256 = "5664758636bdb165af79b25c802e2144f09d3628921d2ddab5aa12885633d72e";
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
