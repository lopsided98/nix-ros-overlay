
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-galactic-asio-cmake-module";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/transport_drivers-release/archive/release/galactic/asio_cmake_module/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "d99bfb223aacbe7fa819e07123708eaeddc0a78c0861bf50a93bbab34e4a5616";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A CMake module for using the ASIO network library'';
    license = with lib.licenses; [ asl20 ];
  };
}
