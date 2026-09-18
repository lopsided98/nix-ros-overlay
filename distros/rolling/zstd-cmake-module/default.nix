
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, zstd }:
buildRosPackage {
  pname = "ros-rolling-zstd-cmake-module";
  version = "0.35.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/zstd_cmake_module/0.35.0-1.tar.gz";
    name = "0.35.0-1.tar.gz";
    sha256 = "f10d0a9fd26d42bc6ab605bf88ddf507fa02fc14b4da39a6702475785fc02bd3";
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
