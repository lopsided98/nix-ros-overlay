
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, zstd }:
buildRosPackage {
  pname = "ros-rolling-zstd-cmake-module";
  version = "0.34.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/zstd_cmake_module/0.34.0-1.tar.gz";
    name = "0.34.0-1.tar.gz";
    sha256 = "f23f8d4aac29cfe6d47adc19a6d46b020c61e3304b5525a3b4997fe2484e29be";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ zstd ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ZSTD compression cmake module package";
    license = with lib.licenses; [ asl20 ];
  };
}
