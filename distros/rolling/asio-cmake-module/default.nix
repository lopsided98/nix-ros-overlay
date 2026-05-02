
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-asio-cmake-module";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/transport_drivers-release/archive/release/rolling/asio_cmake_module/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "100070d23e926d14d91ed9be40d44fba83f79d4f86de208c69926adaf7790b33";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A CMake module for using the ASIO network library";
    license = with lib.licenses; [ asl20 ];
  };
}
