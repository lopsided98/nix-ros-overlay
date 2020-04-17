
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cunit, openssl }:
buildRosPackage {
  pname = "ros-eloquent-cyclonedds";
  version = "0.5.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cyclonedds-release/archive/release/eloquent/cyclonedds/0.5.1-2.tar.gz";
    name = "0.5.1-2.tar.gz";
    sha256 = "7377c71cbb406f7aeb8fcdf5678f79197ab00984a30851b2ab37e813e1e9ed5f";
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
