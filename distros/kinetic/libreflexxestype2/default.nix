
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-libreflexxestype2";
  version = "0.8.8";

  src = fetchurl {
    url = "https://github.com/KITrobotics/ipr_extern-release/archive/release/kinetic/libreflexxestype2/0.8.8-0.tar.gz";
    name = "0.8.8-0.tar.gz";
    sha256 = "e19f5d03525f6c8998061a81b632443960778dc6769bb830ac178a6d69cfbe69";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with ReflexxesTypeII implementation and header files'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
