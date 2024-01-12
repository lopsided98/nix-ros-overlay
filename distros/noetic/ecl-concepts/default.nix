
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-config, ecl-license, ecl-type-traits }:
buildRosPackage {
  pname = "ros-noetic-ecl-concepts";
  version = "0.62.3-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/noetic/ecl_concepts/0.62.3-1.tar.gz";
    name = "0.62.3-1.tar.gz";
    sha256 = "ca986e4e7735e5afa7eb147248b82a7bb9f8aa5481da11ed0978f1cac537f417";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-config ecl-license ecl-type-traits ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Introduces a compile time concept checking mechanism that can be used
     most commonly to check for required functionality when passing
     template arguments.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
