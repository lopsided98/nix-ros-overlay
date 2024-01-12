
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-concepts, ecl-config, ecl-errors, ecl-exceptions, ecl-license, ecl-mpl, ecl-type-traits }:
buildRosPackage {
  pname = "ros-noetic-ecl-converters";
  version = "0.62.3-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/noetic/ecl_converters/0.62.3-1.tar.gz";
    name = "0.62.3-1.tar.gz";
    sha256 = "9f2ed714c59a749e966239423ecda1f7e35c84bf9a74ddb99650c8dc6705873e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-concepts ecl-config ecl-errors ecl-exceptions ecl-license ecl-mpl ecl-type-traits ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Some fast/convenient type converters, mostly for char strings or strings.
     These are not really fully fleshed out, alot of them could use the addition for
     the whole range of fundamental types (e.g. all integers, not just int, unsigned int).
     
     They will come as the need arises.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
