
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, lz4 }:
buildRosPackage {
  pname = "ros-rolling-lz4-cmake-module";
  version = "0.33.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/lz4_cmake_module/0.33.1-2.tar.gz";
    name = "0.33.1-2.tar.gz";
    sha256 = "42620b9242314c5f09070690e8cfc644bbf33ba473672b72e83637eec3fc5e62";
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
