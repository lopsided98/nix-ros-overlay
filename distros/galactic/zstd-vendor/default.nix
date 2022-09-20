
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, zstd }:
buildRosPackage {
  pname = "ros-galactic-zstd-vendor";
  version = "0.9.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/galactic/zstd_vendor/0.9.1-3.tar.gz";
    name = "0.9.1-3.tar.gz";
    sha256 = "08637d6df6372281da5a340b09e07cdc9c73400530f8748519bff32b70a73428";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ zstd ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Zstd compression vendor package, providing a dependency for Zstd.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
