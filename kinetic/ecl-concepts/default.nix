
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin, ecl-type-traits, ecl-config }:
buildRosPackage {
  pname = "ros-kinetic-ecl-concepts";
  version = "0.61.17";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_concepts/0.61.17-0.tar.gz";
    name = "0.61.17-0.tar.gz";
    sha256 = "6ac09d0f74f47b68d140e00d026e55d1867ea30d9af74a5528a776002d9c122d";
  };

  buildType = "catkin";
  buildInputs = [ ecl-license ecl-type-traits ecl-config ];
  propagatedBuildInputs = [ ecl-license ecl-type-traits ecl-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Introduces a compile time concept checking mechanism that can be used
     most commonly to check for required functionality when passing
     template arguments.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
