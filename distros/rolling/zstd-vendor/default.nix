
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, zstd }:
buildRosPackage {
  pname = "ros-rolling-zstd-vendor";
  version = "0.24.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/zstd_vendor/0.24.0-2.tar.gz";
    name = "0.24.0-2.tar.gz";
    sha256 = "bad8a96cd038f2ca35ae506c2cc8573a4fa406102e38f5a6e47354b82cb2226f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  propagatedBuildInputs = [ zstd ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = ''Zstd compression vendor package, providing a dependency for Zstd.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
