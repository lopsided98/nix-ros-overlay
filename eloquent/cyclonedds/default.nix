
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cunit, openssl }:
buildRosPackage {
  pname = "ros-eloquent-cyclonedds";
  version = "0.1.0-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cyclonedds-release/archive/release/eloquent/cyclonedds/0.1.0-7.tar.gz";
    name = "0.1.0-7.tar.gz";
    sha256 = "c5706981e4ba74e1240241f979fee6cc022dac5174f616463df29e699bb39f88";
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
