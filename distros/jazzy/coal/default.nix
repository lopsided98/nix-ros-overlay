
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, cmake, doxygen, eigen, eigenpy, git, octomap, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-coal";
  version = "3.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/coal-release/archive/release/jazzy/coal/3.0.3-2.tar.gz";
    name = "3.0.3-2.tar.gz";
    sha256 = "6314b24938414b519505205e9e86f873e0b2812887e82fbc0e9b552bb6acdb2b";
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
