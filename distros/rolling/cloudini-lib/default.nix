
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, lz4, pcl, zstd }:
buildRosPackage {
  pname = "ros-rolling-cloudini-lib";
  version = "1.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cloudini-release/archive/release/rolling/cloudini_lib/1.5.0-2.tar.gz";
    name = "1.5.0-2.tar.gz";
    sha256 = "6e7314e47d1385f4156a0c3e3ab38596173e2eabb13c7b19f298d4971ecbe80e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake lz4 zstd ];
  checkInputs = [ ament-cmake-gtest pcl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Main library of Cloudini, the pointcloud compression library";
    license = with lib.licenses; [ asl20 ];
  };
}
