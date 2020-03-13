
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-libreflexxestype2";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/KITrobotics/ipr_extern-release/archive/release/melodic/libreflexxestype2/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "feda77d853652f9dff5e1e0e2df972c45916ade312570696cf789d1c6ec02a6c";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with ReflexxesTypeII implementation and header files'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
