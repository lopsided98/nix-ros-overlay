
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gtest, fmt, maliput, maliput-drake, tinyxml-2 }:
buildRosPackage {
  pname = "ros-foxy-maliput-malidrive";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_malidrive-release/archive/release/foxy/maliput_malidrive/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "e37a774e2665aa4364f3cd6c3bb3f1a941c517ce2e3457e163b935edac5741cd";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ament-cmake-gtest ];
  propagatedBuildInputs = [ fmt maliput maliput-drake tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''maliput_malidrive backend'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
