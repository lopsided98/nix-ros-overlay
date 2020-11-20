
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cunit, openssl }:
buildRosPackage {
  pname = "ros-eloquent-cyclonedds";
  version = "0.7.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cyclonedds-release/archive/release/eloquent/cyclonedds/0.7.0-3.tar.gz";
    name = "0.7.0-3.tar.gz";
    sha256 = "d4a1dfced26d9e0fd541606a69668c0ef1ed8ddeaefd551d3bd64f900b53bbd6";
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
