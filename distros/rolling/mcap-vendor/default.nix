
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, liblz4-vendor, zstd-vendor }:
buildRosPackage {
  pname = "ros-rolling-mcap-vendor";
  version = "0.26.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/mcap_vendor/0.26.1-1.tar.gz";
    name = "0.26.1-1.tar.gz";
    sha256 = "b94a3e9dca7bee98a8da2d44c238e7648c50e4f32d45b4908b1b8fea72746641";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  propagatedBuildInputs = [ liblz4-vendor zstd-vendor ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = "mcap vendor package";
    license = with lib.licenses; [ asl20 ];
  };
}
