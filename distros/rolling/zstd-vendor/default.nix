
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, zstd }:
buildRosPackage {
  pname = "ros-rolling-zstd-vendor";
  version = "0.19.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/zstd_vendor/0.19.0-1.tar.gz";
    name = "0.19.0-1.tar.gz";
    sha256 = "7c88a1a24a63f9e1c5fcb3ff7dc995e9dd34d68f81f187454ca5c0290ebc7d3c";
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
