
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cunit, openssl }:
buildRosPackage {
  pname = "ros-dashing-cyclonedds";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cyclonedds-release/archive/release/dashing/cyclonedds/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "07a49a0e992890c12f8dfbf99261756dfb150d3e2b33da102aaa28442f4a4bb2";
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
