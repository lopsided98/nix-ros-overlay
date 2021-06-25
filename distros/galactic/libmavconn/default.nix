
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, asio, console-bridge, mavlink, python3Packages }:
buildRosPackage {
  pname = "ros-galactic-libmavconn";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/galactic/libmavconn/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "e1e5c116f69d4f66e5e77966708ccd571018f8cb924add5a57ffa0ae0e1a942f";
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
    license = with lib.licenses; [ gpl3 lgpl2 bsdOriginal ];
  };
}
