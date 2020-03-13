
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-libreflexxestype2";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/KITrobotics/ipr_extern-release/archive/release/kinetic/libreflexxestype2/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "f35455983c902ec35fcbf2a01bdc95c5147284d8c2dbbd14f03ac08b5b87ad0b";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with ReflexxesTypeII implementation and header files'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
