
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, cmake, doxygen, eigen, eigenpy, git, octomap, python3, python3Packages }:
buildRosPackage {
  pname = "ros-foxy-hpp-fcl";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hpp_fcl-release/archive/release/foxy/hpp-fcl/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "ec60c2f1d44c733b6a825b5730b5d564115e5806292b725a18f41671ed577fad";
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
