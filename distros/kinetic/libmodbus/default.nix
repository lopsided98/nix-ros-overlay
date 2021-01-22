
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules }:
buildRosPackage {
  pname = "ros-kinetic-libmodbus";
  version = "0.8.8";

  src = fetchurl {
    url = "https://github.com/KITrobotics/ipr_extern-release/archive/release/kinetic/libmodbus/0.8.8-0.tar.gz";
    name = "0.8.8-0.tar.gz";
    sha256 = "2ba6a63a88bb1809ef7743a25530875678171c980b46071933297d91540fe3f4";
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
