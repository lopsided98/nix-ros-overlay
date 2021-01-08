
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, catkin, eigen, git, octomap }:
buildRosPackage {
  pname = "ros-melodic-hpp-fcl";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/hpp-fcl_catkin-release/archive/release/melodic/hpp-fcl/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "f6c9669e0b2cf9cbc04bfc89014ae8a82b0895e65eec29d65ca557ca6d375a41";
  };

  buildType = "catkin";
  buildInputs = [ git ];
  propagatedBuildInputs = [ assimp boost eigen octomap ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''HPP fork of FCL with bug fixes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
