
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, lz4 }:
buildRosPackage {
  pname = "ros-jazzy-liblz4-vendor";
  version = "0.26.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/liblz4_vendor/0.26.6-1.tar.gz";
    name = "0.26.6-1.tar.gz";
    sha256 = "70c733562838fb29617bd7eeff18ae3be2898af17b4af210926d9fbb2ce99d67";
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
