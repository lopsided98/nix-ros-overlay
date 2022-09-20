
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-libreflexxestype2";
  version = "0.8.8-r1";

  src = fetchurl {
    url = "https://github.com/KITrobotics/ipr_extern-release/archive/release/melodic/libreflexxestype2/0.8.8-1.tar.gz";
    name = "0.8.8-1.tar.gz";
    sha256 = "ff69ec96c35d48bc4b768dc25812ea2dbece052f25a8d3de96f5460296eb0ccf";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with ReflexxesTypeII implementation and header files'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
