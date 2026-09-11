
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, zstd-vendor }:
buildRosPackage {
  pname = "ros-humble-mcap-vendor";
  version = "0.15.17-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/mcap_vendor/0.15.17-1.tar.gz";
    name = "0.15.17-1.tar.gz";
    sha256 = "28c2559bb6cea66432277f45956031d5564e659285e20e942aea8a39ad1ec04d";
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
