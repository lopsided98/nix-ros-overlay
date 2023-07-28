
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-shared-queues-vendor";
  version = "0.15.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/shared_queues_vendor/0.15.7-1.tar.gz";
    name = "0.15.7-1.tar.gz";
    sha256 = "b785b8ebd6d647d4d1d1aad41b73465ac3f7ca06e4a5c58511d87672a1e1fe78";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Vendor package for concurrent queues from moodycamel'';
    license = with lib.licenses; [ asl20 ];
  };
}
