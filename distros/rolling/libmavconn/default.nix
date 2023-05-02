
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, asio, console-bridge, mavlink, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-libmavconn";
  version = "2.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mavros-release/archive/release/rolling/libmavconn/2.4.0-2.tar.gz";
    name = "2.4.0-2.tar.gz";
    sha256 = "eade77dc2e5fb5c9403594cbdde4ca6a2aa8196a8d10fccc14ba70808e2fa636";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python3Packages.empy ];
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
