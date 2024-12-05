
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-shared-queues-vendor";
  version = "0.15.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/shared_queues_vendor/0.15.13-1.tar.gz";
    name = "0.15.13-1.tar.gz";
    sha256 = "81a4928710ae888143f4b78ee63c9f76218f52f1eec8a9a682e6bdd6adc19781";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Vendor package for concurrent queues from moodycamel";
    license = with lib.licenses; [ asl20 ];
  };
}
