
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, cmake, doxygen, eigen, eigenpy, git, octomap, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-coal";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/coal-release/archive/release/jazzy/coal/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "7659f4afce0b596d60c4d2899b4ee4f466593da99f2612e227a476f763ccd0e8";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git python3Packages.lxml ];
  propagatedBuildInputs = [ assimp boost eigen eigenpy octomap python3 python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "An extension of the Flexible Collision Library.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
