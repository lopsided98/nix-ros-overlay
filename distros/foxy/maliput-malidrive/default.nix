
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gtest, fmt, maliput, maliput-drake, tinyxml-2 }:
buildRosPackage {
  pname = "ros-foxy-maliput-malidrive";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_malidrive-release/archive/release/foxy/maliput_malidrive/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "f41692153765780d42d64711bb2a9ad67f4cc0b630bea1d253f3dad5bd90c8f8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gtest ];
  propagatedBuildInputs = [ fmt maliput maliput-drake tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''maliput_malidrive backend'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
