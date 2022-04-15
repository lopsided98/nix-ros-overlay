
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp-devel, catkin, euslisp, pkg-config, roseus }:
buildRosPackage {
  pname = "ros-noetic-eus-assimp";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_model_tools-release/archive/release/noetic/eus_assimp/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "a77826bcb3b116fb363b1747899a6b7e845ae8cd311d07d09d2548beb754c8a4";
  };

  buildType = "catkin";
  buildInputs = [ euslisp pkg-config ];
  propagatedBuildInputs = [ assimp-devel roseus ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''eus_assimp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
