
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-converters, catkin, ecl-concepts, ecl-time, ecl-license, ecl-errors, ecl-type-traits, ecl-devices }:
buildRosPackage {
  pname = "ros-melodic-ecl-streams";
  version = "0.62.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_streams/0.62.2-0.tar.gz;
    sha256 = "0fd7c5407bc67d28e90e8bb3cee3850ab90ee195b74703949c991cfc0a5836c3";
  };

  buildInputs = [ ecl-converters ecl-concepts ecl-time ecl-license ecl-errors ecl-type-traits ecl-devices ];
  propagatedBuildInputs = [ ecl-converters ecl-concepts ecl-time ecl-license ecl-errors ecl-type-traits ecl-devices ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''These are lightweight text streaming classes that connect to standardised
     ecl type devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
