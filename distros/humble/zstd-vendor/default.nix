
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, zstd }:
buildRosPackage {
  pname = "ros-humble-zstd-vendor";
  version = "0.15.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/zstd_vendor/0.15.4-2.tar.gz";
    name = "0.15.4-2.tar.gz";
    sha256 = "91fd8f9a52b0bce4f4dfa390b4b55b1384b64f93534744e926959bb98ee1bc2b";
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
