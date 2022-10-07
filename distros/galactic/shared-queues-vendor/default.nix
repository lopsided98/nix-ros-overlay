
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-galactic-shared-queues-vendor";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/galactic/shared_queues_vendor/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "92f6f8013d8931ebf69eb7cbf1045bd15b44bbedc0ac0a8d39b835487754f4e2";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Vendor package for concurrent queues from moodycamel'';
    license = with lib.licenses; [ asl20 ];
  };
}
