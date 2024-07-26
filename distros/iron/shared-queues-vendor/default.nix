
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-iron-shared-queues-vendor";
  version = "0.22.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/iron/shared_queues_vendor/0.22.7-1.tar.gz";
    name = "0.22.7-1.tar.gz";
    sha256 = "32f391da36e18e8dc29130bde6918c0bb6effe04f2bc48e41c9ee552e9c7fcf3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Vendor package for concurrent queues from moodycamel";
    license = with lib.licenses; [ asl20 ];
  };
}
