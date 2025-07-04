
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, zstd }:
buildRosPackage {
  pname = "ros-kilted-zstd-vendor";
  version = "0.32.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/kilted/zstd_vendor/0.32.0-2.tar.gz";
    name = "0.32.0-2.tar.gz";
    sha256 = "0cabe0a865a5df6cfae61c1971addbd43defaff92da6f1bdc090705a270a4231";
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
