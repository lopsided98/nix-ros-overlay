
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, cmake, doxygen, eigen, eigenpy, git, octomap, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-coal";
  version = "3.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/coal-release/archive/release/rolling/coal/3.0.3-2.tar.gz";
    name = "3.0.3-2.tar.gz";
    sha256 = "a923a2549326e2c0f4053d4453187c98066af10c04ddb8b00bc55e9051f29c5e";
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
