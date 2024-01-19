
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-concepts, ecl-converters, ecl-devices, ecl-errors, ecl-license, ecl-time, ecl-type-traits }:
buildRosPackage {
  pname = "ros-noetic-ecl-streams";
  version = "0.62.3-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/noetic/ecl_streams/0.62.3-1.tar.gz";
    name = "0.62.3-1.tar.gz";
    sha256 = "6978f56fd03e6f3d7ca205c50af68634fa04a7f02d4a81b28053bf6551fe08d6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-concepts ecl-converters ecl-devices ecl-errors ecl-license ecl-time ecl-type-traits ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''These are lightweight text streaming classes that connect to standardised
     ecl type devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
