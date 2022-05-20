
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp-devel, catkin, euslisp, pkg-config, roseus }:
buildRosPackage {
  pname = "ros-noetic-eus-assimp";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_model_tools-release/archive/release/noetic/eus_assimp/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "f166cf1a93f42fc5f713ab98b2048206a69fefd26cebafeb45b9da845cd8317e";
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
