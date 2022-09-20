
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp-devel, catkin, euslisp, pkg-config, roseus }:
buildRosPackage {
  pname = "ros-melodic-eus-assimp";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_model_tools-release/archive/release/melodic/eus_assimp/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "d94c8c3950538e07a3d17c344f0d25aa7ce89081991c80b3200fcd90b6077e06";
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
