
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp-devel, catkin, euslisp, pkg-config, roseus }:
buildRosPackage {
  pname = "ros-noetic-eus-assimp";
  version = "0.4.4-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_model_tools-release/archive/release/noetic/eus_assimp/0.4.4-2.tar.gz";
    name = "0.4.4-2.tar.gz";
    sha256 = "0fb75b49127281e801e04d76051da15d7a8c2eac4fbf4505d63b09a99850d865";
  };

  buildType = "catkin";
  buildInputs = [ catkin euslisp pkg-config ];
  propagatedBuildInputs = [ assimp-devel roseus ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''eus_assimp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
