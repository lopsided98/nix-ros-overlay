
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-iron-asio-cmake-module";
  version = "1.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/transport_drivers-release/archive/release/iron/asio_cmake_module/1.2.0-3.tar.gz";
    name = "1.2.0-3.tar.gz";
    sha256 = "da1b8516543fec2d36e0cf5736957f2ab41246e9a5f06602e63e6c5b1b5dad26";
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
