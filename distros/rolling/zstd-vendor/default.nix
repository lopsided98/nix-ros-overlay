
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, zstd }:
buildRosPackage {
  pname = "ros-rolling-zstd-vendor";
  version = "0.23.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/zstd_vendor/0.23.0-1.tar.gz";
    name = "0.23.0-1.tar.gz";
    sha256 = "21996b9a5b4e3733c5c3f46a78200f367e55606166ef7a1c62bb1fc545801b83";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  propagatedBuildInputs = [ zstd ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''Zstd compression vendor package, providing a dependency for Zstd.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
