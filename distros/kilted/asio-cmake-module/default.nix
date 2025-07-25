
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-kilted-asio-cmake-module";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/transport_drivers-release/archive/release/kilted/asio_cmake_module/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "2d35c968274cb732754bd5bfe5c88fc9a3876b640cb9d38f973d6b6c01219226";
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
