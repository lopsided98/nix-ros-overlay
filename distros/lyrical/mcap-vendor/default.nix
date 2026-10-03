
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, lz4-cmake-module, zstd-cmake-module }:
buildRosPackage {
  pname = "ros-lyrical-mcap-vendor";
  version = "0.33.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/lyrical/mcap_vendor/0.33.4-1.tar.gz";
    name = "0.33.4-1.tar.gz";
    sha256 = "6f33c048d580a1bdc7d782fd25ede5e2678181fa2fae47970a5cc85556a882ab";
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
