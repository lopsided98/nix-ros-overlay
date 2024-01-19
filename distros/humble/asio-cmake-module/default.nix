
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-asio-cmake-module";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/transport_drivers-release/archive/release/humble/asio_cmake_module/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "c99f1f8e2a27ce9407ae6455f11142cc197994f4b613642d93598c15d67073ca";
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
