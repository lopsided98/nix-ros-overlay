
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-asio-cmake-module";
  version = "1.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/transport_drivers-release/archive/release/rolling/asio_cmake_module/1.2.0-3.tar.gz";
    name = "1.2.0-3.tar.gz";
    sha256 = "8bad7749da920f61360c7364f1fb6c2911c315c757988bf1bec409371454e768";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A CMake module for using the ASIO network library'';
    license = with lib.licenses; [ asl20 ];
  };
}
