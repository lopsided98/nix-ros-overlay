
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, zstd }:
buildRosPackage {
  pname = "ros-humble-zstd-vendor";
  version = "0.15.15-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/zstd_vendor/0.15.15-1.tar.gz";
    name = "0.15.15-1.tar.gz";
    sha256 = "faf0e2cd5b5aa724b79d06c5ec8ad07455f109c2d4f0eddcbd55b369883458e6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  propagatedBuildInputs = [ zstd ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = "Zstd compression vendor package, providing a dependency for Zstd.";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
