
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cunit, maven, openjdk, openssl }:
buildRosPackage {
  pname = "ros-foxy-cyclonedds";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cyclonedds-release/archive/release/foxy/cyclonedds/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "df843df67155e09abfff76236dffbc3424ee6bccc021487f8b818aea13157a6d";
  };

  buildType = "cmake";
  checkInputs = [ cunit ];
  propagatedBuildInputs = [ openssl ];
  nativeBuildInputs = [ cmake maven openjdk ];

  meta = {
    description = ''Eclipse Cyclone DDS is a very performant and robust open-source DDS implementation. Cyclone DDS is developed completely in the open as an Eclipse IoT project.'';
    license = with lib.licenses; [ "Eclipse Public License 2.0" "Eclipse Distribution License 1.0" ];
  };
}
