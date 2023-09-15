
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, zstd }:
buildRosPackage {
  pname = "ros-iron-zstd-vendor";
  version = "0.22.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/iron/zstd_vendor/0.22.3-1.tar.gz";
    name = "0.22.3-1.tar.gz";
    sha256 = "f1f57194591c3ef638395fb9856a7be153e31f98ce65079282c941593856ab58";
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
