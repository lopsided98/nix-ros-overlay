
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, lz4-cmake-module, zstd-cmake-module }:
buildRosPackage {
  pname = "ros-rolling-mcap-vendor";
  version = "0.33.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/mcap_vendor/0.33.1-1.tar.gz";
    name = "0.33.1-1.tar.gz";
    sha256 = "d184edec062a8d16b47a4d6b334d641471a5eb73d19eb76474d96e9a52c48ac5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  propagatedBuildInputs = [ lz4-cmake-module zstd-cmake-module ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = "mcap vendor package";
    license = with lib.licenses; [ asl20 ];
  };
}
