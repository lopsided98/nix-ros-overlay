
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, lz4 }:
buildRosPackage {
  pname = "ros-rolling-liblz4-vendor";
  version = "0.28.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/liblz4_vendor/0.28.0-1.tar.gz";
    name = "0.28.0-1.tar.gz";
    sha256 = "d9c33cbaa75af7ad090fc6b6e9de6afcb10ef79ad7eab0457fa39733800f0c7a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  propagatedBuildInputs = [ lz4 ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "LZ4 compression vendor package, providing a dependency for LZ4.";
    license = with lib.licenses; [ asl20 bsdOriginal "GPL-2.0-only" ];
  };
}
