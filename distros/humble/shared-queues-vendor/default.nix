
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-shared-queues-vendor";
  version = "0.15.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/shared_queues_vendor/0.15.11-1.tar.gz";
    name = "0.15.11-1.tar.gz";
    sha256 = "0fcf0a1b720d02f1c1b35bc872b1c37c6cdfa7b119a1365a47f2c310e45225c6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Vendor package for concurrent queues from moodycamel";
    license = with lib.licenses; [ asl20 ];
  };
}
