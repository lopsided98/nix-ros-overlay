
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, zstd }:
buildRosPackage {
  pname = "ros-humble-zstd-vendor";
  version = "0.15.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/zstd_vendor/0.15.7-1.tar.gz";
    name = "0.15.7-1.tar.gz";
    sha256 = "798c2fd991241547e2374ac1a48eace5cfe4d35527c073cd3eb1f46bda398902";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  propagatedBuildInputs = [ zstd ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''Zstd compression vendor package, providing a dependency for Zstd.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
