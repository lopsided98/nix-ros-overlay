
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, liblz4-vendor, zstd-vendor }:
buildRosPackage {
  pname = "ros-jazzy-mcap-vendor";
  version = "0.26.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/mcap_vendor/0.26.5-1.tar.gz";
    name = "0.26.5-1.tar.gz";
    sha256 = "63bfd853dd3f7b8842ec98e2c5adfe2a565d225ba73936e1c4ab6ccbcec5af82";
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
