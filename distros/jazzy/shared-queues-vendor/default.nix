
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-shared-queues-vendor";
  version = "0.26.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/shared_queues_vendor/0.26.3-1.tar.gz";
    name = "0.26.3-1.tar.gz";
    sha256 = "420075a4dd887049e6a698f8837e7a5614e6f5769e6334703fdf0b3cffc6d619";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Vendor package for concurrent queues from moodycamel";
    license = with lib.licenses; [ asl20 ];
  };
}
