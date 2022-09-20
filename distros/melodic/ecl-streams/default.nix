
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-concepts, ecl-converters, ecl-devices, ecl-errors, ecl-license, ecl-time, ecl-type-traits }:
buildRosPackage {
  pname = "ros-melodic-ecl-streams";
  version = "0.62.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_streams/0.62.2-0.tar.gz";
    name = "0.62.2-0.tar.gz";
    sha256 = "0fd7c5407bc67d28e90e8bb3cee3850ab90ee195b74703949c991cfc0a5836c3";
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
