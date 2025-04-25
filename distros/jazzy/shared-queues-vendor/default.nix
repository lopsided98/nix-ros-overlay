
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-shared-queues-vendor";
  version = "0.26.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/shared_queues_vendor/0.26.7-1.tar.gz";
    name = "0.26.7-1.tar.gz";
    sha256 = "45a1a50ae0481f6a8a3efdc2f7aac0dd84dd27bb676b3583dfa6a19132c6ff65";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Vendor package for concurrent queues from moodycamel";
    license = with lib.licenses; [ asl20 ];
  };
}
