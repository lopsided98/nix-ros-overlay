
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, lz4 }:
buildRosPackage {
  pname = "ros-rolling-liblz4-vendor";
  version = "0.27.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/liblz4_vendor/0.27.0-1.tar.gz";
    name = "0.27.0-1.tar.gz";
    sha256 = "1d57dbb90fb6407fd1a6ab53e5408871c99f83cfd37576cf6ba1af4281674ad4";
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
