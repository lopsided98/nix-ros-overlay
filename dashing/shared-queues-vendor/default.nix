
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage rec {
  pname = "ros-dashing-shared-queues-vendor";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/shared_queues_vendor/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "2e5a92ab1d768c3a947c834c779cafea4e1aa815068f03efeb115e21cf64058e";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Vendor package for concurrent queues from moodycamel'';
    license = with lib.licenses; [ asl20 ];
  };
}
