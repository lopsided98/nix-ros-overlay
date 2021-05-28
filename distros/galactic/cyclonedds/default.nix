
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, cmake, cunit, iceoryx-binding-c, iceoryx-posh, iceoryx-utils, openssl }:
buildRosPackage {
  pname = "ros-galactic-cyclonedds";
  version = "0.8.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cyclonedds-release/archive/release/galactic/cyclonedds/0.8.0-4.tar.gz";
    name = "0.8.0-4.tar.gz";
    sha256 = "7d1865b1b65e761b9bdcad37c28be33ac66735b622e3cacf3b700620c359752d";
  };

  buildType = "cmake";
  buildInputs = [ bison ];
  checkInputs = [ cunit ];
  propagatedBuildInputs = [ iceoryx-binding-c iceoryx-posh iceoryx-utils openssl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Eclipse Cyclone DDS is a very performant and robust open-source DDS implementation. Cyclone DDS is developed completely in the open as an Eclipse IoT project.'';
    license = with lib.licenses; [ "Eclipse Public License 2.0" "Eclipse Distribution License 1.0" ];
  };
}
