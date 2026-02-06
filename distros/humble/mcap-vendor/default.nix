
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, zstd-vendor }:
buildRosPackage {
  pname = "ros-humble-mcap-vendor";
  version = "0.15.16-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/mcap_vendor/0.15.16-1.tar.gz";
    name = "0.15.16-1.tar.gz";
    sha256 = "9e2612ab6e02993a1348f943184652082b802f13c6695400e96b35026031fd1c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  propagatedBuildInputs = [ zstd-vendor ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = "mcap vendor package";
    license = with lib.licenses; [ asl20 ];
  };
}
