
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, git, lz4-cmake-module, zstd-cmake-module }:
buildRosPackage {
  pname = "ros-rolling-mcap-vendor";
  version = "0.35.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/mcap_vendor/0.35.0-1.tar.gz";
    name = "0.35.0-1.tar.gz";
    sha256 = "a36de5ad57c5c3310f3098f1b0fc20ab6c5f3483704b119833edd06ea3cbb6a5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core git ];
  propagatedBuildInputs = [ lz4-cmake-module zstd-cmake-module ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core git ];

  meta = {
    description = "mcap vendor package";
    license = with lib.licenses; [ asl20 ];
  };
}
