
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-lyrical-asio-cmake-module";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/transport_drivers-release/archive/release/lyrical/asio_cmake_module/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "9792bf6ab342c994c8e56e233d88d38de666e3cfd27fc650259b66c593e1f501";
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
