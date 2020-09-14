
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-shared-queues-vendor";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/shared_queues_vendor/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "3d535c9ccd9d92a60b0d750a10ab0919b79ef95ef0a618edb2357870a522ec0c";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Vendor package for concurrent queues from moodycamel'';
    license = with lib.licenses; [ asl20 ];
  };
}
