
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-shared-queues-vendor";
  version = "0.3.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/shared_queues_vendor/0.3.9-1.tar.gz";
    name = "0.3.9-1.tar.gz";
    sha256 = "e1551c0c9907346a1bb4e1b06b08f9bfbddeb999d9b5839486a5393557f3c598";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Vendor package for concurrent queues from moodycamel'';
    license = with lib.licenses; [ asl20 ];
  };
}
