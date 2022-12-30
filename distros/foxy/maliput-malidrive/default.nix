
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gtest, fmt, maliput, maliput-drake, tinyxml-2 }:
buildRosPackage {
  pname = "ros-foxy-maliput-malidrive";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_malidrive-release/archive/release/foxy/maliput_malidrive/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "7db77cbb7a3ca75c56ebfd8eee378a7460e95f2cc215964fe23f2ad5908d2f9a";
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
