
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-shared-queues-vendor";
  version = "0.29.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/shared_queues_vendor/0.29.0-1.tar.gz";
    name = "0.29.0-1.tar.gz";
    sha256 = "a7ac16c67588c3452dc6a7305acf416ad2021a6a8fe6b305e1bf92ff6ee5cb40";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Vendor package for concurrent queues from moodycamel";
    license = with lib.licenses; [ asl20 ];
  };
}
