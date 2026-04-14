
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, lz4 }:
buildRosPackage {
  pname = "ros-jazzy-liblz4-vendor";
  version = "0.26.10-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/liblz4_vendor/0.26.10-2.tar.gz";
    name = "0.26.10-2.tar.gz";
    sha256 = "2a5097ed462869dd366eaadf5c00c2948b19bcf3fc372b69c77936428d71e6b2";
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
