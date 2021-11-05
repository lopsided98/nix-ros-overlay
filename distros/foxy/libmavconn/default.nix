
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, asio, console-bridge, mavlink, python3Packages }:
buildRosPackage {
  pname = "ros-foxy-libmavconn";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/foxy/libmavconn/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "128f16112ed4da3414b2bd8f30c2f3eef024ae1f59e9e262f48695529937db09";
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
