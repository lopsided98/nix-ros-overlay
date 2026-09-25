
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, lz4 }:
buildRosPackage {
  pname = "ros-lyrical-lz4-cmake-module";
  version = "0.33.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/lyrical/lz4_cmake_module/0.33.4-1.tar.gz";
    name = "0.33.4-1.tar.gz";
    sha256 = "d86f6c1a64fb560278d155df5ebc933aca0642ae04adcfecf7c39fada49045f1";
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
