
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, asio, console-bridge, mavlink, python3Packages }:
buildRosPackage {
  pname = "ros-humble-libmavconn";
  version = "2.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mavros-release/archive/release/humble/libmavconn/2.13.0-1.tar.gz";
    name = "2.13.0-1.tar.gz";
    sha256 = "20b55a11bfcd5938f0edbd50451a2f7e95d46a9b791be84196f99c08e4e09259";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python3Packages.empy ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ asio console-bridge mavlink ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "MAVLink communication library.
    This library provide unified connection handling classes
    and URL to connection object mapper.

    This library can be used in standalone programs.";
    license = with lib.licenses; [ gpl3Only lgpl3Only bsdOriginal ];
  };
}
