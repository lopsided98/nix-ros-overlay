
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-galactic-shared-queues-vendor";
  version = "0.9.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/galactic/shared_queues_vendor/0.9.1-3.tar.gz";
    name = "0.9.1-3.tar.gz";
    sha256 = "60e2698b9a59dd811f9fe4c84a11371b202df1a4c866090c8f1e8817661ccaaa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Vendor package for concurrent queues from moodycamel'';
    license = with lib.licenses; [ asl20 ];
  };
}
