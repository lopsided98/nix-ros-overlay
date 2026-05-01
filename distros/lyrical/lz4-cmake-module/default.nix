
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, lz4 }:
buildRosPackage {
  pname = "ros-lyrical-lz4-cmake-module";
  version = "0.33.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/lyrical/lz4_cmake_module/0.33.2-1.tar.gz";
    name = "0.33.2-1.tar.gz";
    sha256 = "cb5d3743b108df422984cbbb13668002d98dc777b731605b1298b83c0503e14b";
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
