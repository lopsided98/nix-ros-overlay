
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-asio-cmake-module";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/transport_drivers-release/archive/release/jazzy/asio_cmake_module/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "05d556af0ac03635c20dc90bfefcbec92836a0e6369593f5c0f6a56e74a3791d";
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
