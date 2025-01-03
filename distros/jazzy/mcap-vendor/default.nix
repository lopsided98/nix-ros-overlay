
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, liblz4-vendor, zstd-vendor }:
buildRosPackage {
  pname = "ros-jazzy-mcap-vendor";
  version = "0.26.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/mcap_vendor/0.26.6-1.tar.gz";
    name = "0.26.6-1.tar.gz";
    sha256 = "6757bb6a41784b906ce25d87336f569ca8a4cabc20a896aabf1395555f4d6e16";
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
