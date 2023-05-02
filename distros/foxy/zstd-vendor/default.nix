
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, zstd }:
buildRosPackage {
  pname = "ros-foxy-zstd-vendor";
  version = "0.3.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/zstd_vendor/0.3.10-1.tar.gz";
    name = "0.3.10-1.tar.gz";
    sha256 = "5e0ea49ee0f27dd550489892abd3b317facaaac4f5f9d2790776739d0571d4e2";
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
