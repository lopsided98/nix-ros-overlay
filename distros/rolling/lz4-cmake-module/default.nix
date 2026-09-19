
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, lz4 }:
buildRosPackage {
  pname = "ros-rolling-lz4-cmake-module";
  version = "0.35.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/lz4_cmake_module/0.35.0-1.tar.gz";
    name = "0.35.0-1.tar.gz";
    sha256 = "dad4abfa2701c022ad895ced15eee7d96cf68f9a0854c8f38a0b58e09487d237";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ lz4 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "LZ4 compression cmake module package";
    license = with lib.licenses; [ asl20 ];
  };
}
