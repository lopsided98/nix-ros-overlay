
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, zstd }:
buildRosPackage {
  pname = "ros-rolling-zstd-vendor";
  version = "0.28.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/zstd_vendor/0.28.0-1.tar.gz";
    name = "0.28.0-1.tar.gz";
    sha256 = "c95323f7f5f746e651572642aa9cf4bb57a01362bb7537774ca1684b3af770b9";
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
