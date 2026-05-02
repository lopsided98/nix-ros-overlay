
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, lz4-cmake-module, zstd-cmake-module }:
buildRosPackage {
  pname = "ros-rolling-mcap-vendor";
  version = "0.33.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/mcap_vendor/0.33.1-2.tar.gz";
    name = "0.33.1-2.tar.gz";
    sha256 = "786c120d9a8084b880486be73028e4e28098b1c757577a9710c1225db04d27f1";
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
