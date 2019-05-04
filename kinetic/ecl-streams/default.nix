
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-converters, catkin, ecl-concepts, ecl-time, ecl-license, ecl-errors, ecl-type-traits, ecl-devices }:
buildRosPackage {
  pname = "ros-kinetic-ecl-streams";
  version = "0.61.17";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_streams/0.61.17-0.tar.gz;
    sha256 = "43fc6dfe2972b2a6ab5bea838ea07972f23ba86fe19d1df669bab7ae7a98355e";
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
