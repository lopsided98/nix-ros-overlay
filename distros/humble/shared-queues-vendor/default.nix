
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-shared-queues-vendor";
  version = "0.15.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/shared_queues_vendor/0.15.12-1.tar.gz";
    name = "0.15.12-1.tar.gz";
    sha256 = "213fe029acf0e5dbf52e70a4e9ca44b1467d22c07fc6cd39485e7ab6a9fb9d48";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Vendor package for concurrent queues from moodycamel";
    license = with lib.licenses; [ asl20 ];
  };
}
