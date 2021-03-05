
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-shared-queues-vendor";
  version = "0.3.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/shared_queues_vendor/0.3.7-1.tar.gz";
    name = "0.3.7-1.tar.gz";
    sha256 = "edc644c9982602ab644b676900819cd3ae7d318d9877a352a9dc01186a463afa";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Vendor package for concurrent queues from moodycamel'';
    license = with lib.licenses; [ asl20 ];
  };
}
