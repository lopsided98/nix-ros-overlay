
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, asio, console-bridge, mavlink, python3Packages }:
buildRosPackage {
  pname = "ros-galactic-libmavconn";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/galactic/libmavconn/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "9b36825a5fb6e2e26b878858ef636bb3f90607c0197b84fa35a15ca6a2377678";
  };

  buildType = "ament_cmake";
  buildInputs = [ python3Packages.empy ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ asio console-bridge mavlink ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''MAVLink communication library.
    This library provide unified connection handling classes
    and URL to connection object mapper.

    This library can be used in standalone programs.'';
    license = with lib.licenses; [ gpl3Only lgpl3Only bsdOriginal ];
  };
}
