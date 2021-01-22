
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp-devel, catkin, euslisp, pkg-config, roseus }:
buildRosPackage {
  pname = "ros-kinetic-eus-assimp";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_model_tools-release/archive/release/kinetic/eus_assimp/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "2a1ab35081290825e37022a99c6e8f04460e76aef4af6cea16befa0a94dae2d8";
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
