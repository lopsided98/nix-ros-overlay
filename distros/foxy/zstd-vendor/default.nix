
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, zstd }:
buildRosPackage {
  pname = "ros-foxy-zstd-vendor";
  version = "0.3.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/zstd_vendor/0.3.7-1.tar.gz";
    name = "0.3.7-1.tar.gz";
    sha256 = "4768326423dccd4ac7d044447a78c89cf71acfc2d4840d64c3fffc12c9daa4b7";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ zstd ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Zstd compression vendor package, providing a dependency for Zstd.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
