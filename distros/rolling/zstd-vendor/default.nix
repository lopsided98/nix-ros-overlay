
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, zstd }:
buildRosPackage {
  pname = "ros-rolling-zstd-vendor";
  version = "0.32.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/zstd_vendor/0.32.0-1.tar.gz";
    name = "0.32.0-1.tar.gz";
    sha256 = "ce3df98ed21ffa595708ea8f0af7df94eb3222c3084433702206fa5040cd9b06";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  propagatedBuildInputs = [ zstd ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Zstd compression vendor package, providing a dependency for Zstd.";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
