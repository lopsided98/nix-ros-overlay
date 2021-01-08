
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, catkin, eigen, git, octomap }:
buildRosPackage {
  pname = "ros-kinetic-hpp-fcl";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/hpp-fcl_catkin-release/archive/release/kinetic/hpp-fcl/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "96071e1b5bc567fa260a40fb633472e7f879c693bc2d7e63c80be92d45022355";
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
