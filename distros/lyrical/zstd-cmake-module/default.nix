
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, zstd }:
buildRosPackage {
  pname = "ros-lyrical-zstd-cmake-module";
  version = "0.33.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/lyrical/zstd_cmake_module/0.33.3-1.tar.gz";
    name = "0.33.3-1.tar.gz";
    sha256 = "42da7e0012aa120178d121b1a2af36628b7a04abcc8279109daceb250bbe8a77";
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
