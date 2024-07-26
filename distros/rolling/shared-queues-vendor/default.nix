
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-shared-queues-vendor";
  version = "0.28.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/shared_queues_vendor/0.28.0-1.tar.gz";
    name = "0.28.0-1.tar.gz";
    sha256 = "ea0167b78c8c709aae182cb7db7c3580a5b043fdee1123b5dee39d5ad16fe906";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Vendor package for concurrent queues from moodycamel";
    license = with lib.licenses; [ asl20 ];
  };
}
