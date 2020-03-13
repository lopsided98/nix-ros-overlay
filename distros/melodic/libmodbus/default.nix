
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules }:
buildRosPackage {
  pname = "ros-melodic-libmodbus";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/KITrobotics/ipr_extern-release/archive/release/melodic/libmodbus/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "383dfdd6819424090d457f987f790dfb026cdfe768ab5e00dd7d5fb2e602312d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The iirob_filters package implements following filters:
      1) Low-Pass
      2) Moving Mean
      3) Gravity Compensation (used for force-torque sensors)
      4) Threshold Filter'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
