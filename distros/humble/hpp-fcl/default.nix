
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, cmake, doxygen, eigen, eigenpy, git, octomap, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-hpp-fcl";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hpp_fcl-release/archive/release/humble/hpp-fcl/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "9ff45aac8b11c44aeee0335c36bb9c948998a808425067dc7f61da4e089a52dc";
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
