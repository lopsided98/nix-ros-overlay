
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, catkin, eigen, git, octomap }:
buildRosPackage {
  pname = "ros-melodic-hpp-fcl";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/hpp-fcl_catkin-release/archive/release/melodic/hpp-fcl/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "2fdf0400d19ccdc82b6788b4715d5adf11af7e3159f8cd87f5a401ddd3fb53f5";
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
