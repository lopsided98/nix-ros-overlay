
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-shared-queues-vendor";
  version = "0.18.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/shared_queues_vendor/0.18.0-3.tar.gz";
    name = "0.18.0-3.tar.gz";
    sha256 = "4a319e8dbb45728015076e433d3863ffb5db88f2e9e46ac370c420aef6941779";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Vendor package for concurrent queues from moodycamel'';
    license = with lib.licenses; [ asl20 ];
  };
}
