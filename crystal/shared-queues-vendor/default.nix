
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-crystal-shared-queues-vendor";
  version = "0.0.7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/crystal/shared_queues_vendor/0.0.7-0.tar.gz";
    name = "0.0.7-0.tar.gz";
    sha256 = "a16b140efff873ddc45af4c6f25e534942e36d408294d04ed33dc4875a6c9a57";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Vendor package for concurrent queues from moodycamel'';
    license = with lib.licenses; [ asl20 ];
  };
}
