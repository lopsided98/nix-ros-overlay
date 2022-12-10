
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-asio-cmake-module";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/transport_drivers-release/archive/release/rolling/asio_cmake_module/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "8fc00f544859bbd8f3ee84ae4cacb66189f5291a396bacbfcde722a90f9ea039";
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
