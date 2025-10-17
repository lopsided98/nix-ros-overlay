
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, cmake, doxygen, eigen, eigenpy, git, octomap, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-coal";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/coal-release/archive/release/kilted/coal/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "c84c0f91d5004d29cd838223fc1a8379bc225db7042c875414540a0f8d7a218c";
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
