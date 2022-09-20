
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-config, ecl-converters-lite, ecl-errors, ecl-io, ecl-sigslots-lite, ecl-time-lite }:
buildRosPackage {
  pname = "ros-melodic-ecl-lite";
  version = "0.61.6";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/melodic/ecl_lite/0.61.6-0.tar.gz";
    name = "0.61.6-0.tar.gz";
    sha256 = "fceacb01c4b94197a2e6f342c6a76f5a9af13273e9cda61c75c4b3702e3aea3f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-config ecl-converters-lite ecl-errors ecl-io ecl-sigslots-lite ecl-time-lite ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Libraries and utilities for embedded and low-level linux development.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
