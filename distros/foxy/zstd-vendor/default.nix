
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, zstd }:
buildRosPackage {
  pname = "ros-foxy-zstd-vendor";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/zstd_vendor/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "2ec8b542fccfd3dbcb8370c40da3b29a473a23ef33cd31c40986e7843b43cfbd";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ zstd ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Zstd compression vendor package, providing a dependency for Zstd.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
