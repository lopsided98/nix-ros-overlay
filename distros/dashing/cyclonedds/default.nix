
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cunit, openssl }:
buildRosPackage {
  pname = "ros-dashing-cyclonedds";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cyclonedds-release/archive/release/dashing/cyclonedds/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "afbb1cd60046ac3513b78d22f26af23317414074cf00fe612708d56d1babe03e";
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
