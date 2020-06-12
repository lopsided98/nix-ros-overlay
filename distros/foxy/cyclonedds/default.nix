
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cunit, maven, openjdk, openssl }:
buildRosPackage {
  pname = "ros-foxy-cyclonedds";
  version = "0.5.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cyclonedds-release/archive/release/foxy/cyclonedds/0.5.1-2.tar.gz";
    name = "0.5.1-2.tar.gz";
    sha256 = "5b3edf7326843f994bc115d5291addede1a3f9d8592bb7cedc8122f1a4c637d1";
  };

  buildType = "cmake";
  checkInputs = [ cunit ];
  propagatedBuildInputs = [ openssl ];
  nativeBuildInputs = [ cmake maven openjdk ];

  meta = {
    description = ''Eclipse Cyclone DDS is a very performant and robust open-source DDS implementation. Cyclone DDS is developed completely in the open as an Eclipse IoT project.'';
    license = with lib.licenses; [ "Eclipse Public License 2.0" ];
  };
}
