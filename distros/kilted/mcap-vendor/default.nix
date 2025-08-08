
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, liblz4-vendor, zstd-vendor }:
buildRosPackage {
  pname = "ros-kilted-mcap-vendor";
  version = "0.32.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/kilted/mcap_vendor/0.32.0-2.tar.gz";
    name = "0.32.0-2.tar.gz";
    sha256 = "0ddb40c7f0dc2a992ec7b54068eed5b1561609d0cfff1dbe9a5e62e4c6969062";
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
