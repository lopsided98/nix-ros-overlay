
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, zstd }:
buildRosPackage {
  pname = "ros-rolling-zstd-cmake-module";
  version = "0.33.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/zstd_cmake_module/0.33.1-2.tar.gz";
    name = "0.33.1-2.tar.gz";
    sha256 = "267fa300080dd52823b5b3ea6c04f0a37f96847116b864c5f5ef25b0e75a1962";
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
