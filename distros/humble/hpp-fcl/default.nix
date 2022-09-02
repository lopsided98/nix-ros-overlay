
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, cmake, doxygen, eigen, eigenpy, git, octomap, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-hpp-fcl";
  version = "2.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hpp_fcl-release/archive/release/humble/hpp-fcl/2.1.2-2.tar.gz";
    name = "2.1.2-2.tar.gz";
    sha256 = "acddc7d477e970a28c516726b2c17cfe04f176307cfa4cbebd82f6902593bc93";
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
