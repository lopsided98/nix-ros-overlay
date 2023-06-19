
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, zstd }:
buildRosPackage {
  pname = "ros-foxy-zstd-vendor";
  version = "0.3.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/zstd_vendor/0.3.11-1.tar.gz";
    name = "0.3.11-1.tar.gz";
    sha256 = "b0837482314c3079b9f657e3b400462bc72255cf0a8a726b8a43be38ff06d89b";
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
