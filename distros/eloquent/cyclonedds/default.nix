
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cunit, openssl }:
buildRosPackage {
  pname = "ros-eloquent-cyclonedds";
  version = "0.7.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cyclonedds-release/archive/release/eloquent/cyclonedds/0.7.0-4.tar.gz";
    name = "0.7.0-4.tar.gz";
    sha256 = "243bbbe3fdf695c7bc6c253999bd159f177e1055786127cdc90c1e0e72528a03";
  };

  buildType = "cmake";
  checkInputs = [ cunit ];
  propagatedBuildInputs = [ openssl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Eclipse Cyclone DDS is a very performant and robust open-source DDS implementation. Cyclone DDS is developed completely in the open as an Eclipse IoT project.'';
    license = with lib.licenses; [ "Eclipse Public License 2.0" "Eclipse Distribution License 1.0" ];
  };
}
