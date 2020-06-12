
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, zstd }:
buildRosPackage {
  pname = "ros-foxy-zstd-vendor";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/zstd_vendor/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "b6109e74fafe3d5e0be753e3b094bded7265fde04834ae673ab8ab9db6d804ab";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ zstd ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Zstd compression vendor package, providing a dependency for Zstd.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
