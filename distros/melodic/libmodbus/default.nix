
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules }:
buildRosPackage {
  pname = "ros-melodic-libmodbus";
  version = "0.8.8-r1";

  src = fetchurl {
    url = "https://github.com/KITrobotics/ipr_extern-release/archive/release/melodic/libmodbus/0.8.8-1.tar.gz";
    name = "0.8.8-1.tar.gz";
    sha256 = "f5b0b1453abb1f1950ad1ca3378b061979259515d0d5bdc5958dd46a5c6b3c36";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The iirob_filters package implements following filters:
      1) Low-Pass
      2) Moving Mean
      3) Gravity Compensation (used for force-torque sensors)
      4) Threshold Filter'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
