
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, asio, console-bridge, mavlink, python3Packages }:
buildRosPackage {
  pname = "ros-humble-libmavconn";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mavros-release/archive/release/humble/libmavconn/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "5e5273da2f8e57fda3ce0f8e0ca9636e23d803d1d26f8bcea8a59fb51aa557f5";
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
