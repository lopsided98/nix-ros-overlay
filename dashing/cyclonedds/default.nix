
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cunit, openssl }:
buildRosPackage {
  pname = "ros-dashing-cyclonedds";
  version = "0.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cyclonedds-release/archive/release/dashing/cyclonedds/0.1.0-3.tar.gz";
    name = "0.1.0-3.tar.gz";
    sha256 = "2a26e433b8c56a1003cc745e8612d7d3551a49ed25d63a7a092e002ce507139d";
  };

  buildType = "cmake";
  checkInputs = [ cunit ];
  propagatedBuildInputs = [ openssl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Eclipse Cyclone DDS is a very performant and robust open-source DDS implementation. Cyclone DDS is developed completely in the open as an Eclipse IoT project.'';
    license = with lib.licenses; [ "Eclipse Public License 2.0" ];
  };
}
