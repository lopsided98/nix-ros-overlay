
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-shared-queues-vendor";
  version = "0.15.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/shared_queues_vendor/0.15.4-2.tar.gz";
    name = "0.15.4-2.tar.gz";
    sha256 = "8476445718fa9ec082fcd1a660ce8424c2671beb01d279cfedc1865c24de3fc9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Vendor package for concurrent queues from moodycamel'';
    license = with lib.licenses; [ asl20 ];
  };
}
