
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, cmake, doxygen, eigen, eigenpy, git, octomap, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-coal";
  version = "3.0.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/coal-release/archive/release/humble/coal/3.0.3-5.tar.gz";
    name = "3.0.3-5.tar.gz";
    sha256 = "f7b1a171b2ed5e8158675e64a089b3551664038a9e0c068d6c4246449c6a7a9a";
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
