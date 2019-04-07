
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, class-loader, catkin, canopen-402 }:
buildRosPackage {
  pname = "ros-kinetic-cob-elmo-homing";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_elmo_homing/0.6.13-0.tar.gz;
    sha256 = "74ef235875833a9a3945684962f174cb3f01e21467c573d14c3d18b394780d5f";
  };

  buildInputs = [ class-loader canopen-402 ];
  propagatedBuildInputs = [ class-loader canopen-402 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This packagae implements the special homing procedure that is needed for old cob4/raw bases'';
    #license = lib.licenses.Apache 2.0;
  };
}
