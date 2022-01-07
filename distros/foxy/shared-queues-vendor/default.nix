
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-shared-queues-vendor";
  version = "0.3.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/shared_queues_vendor/0.3.8-1.tar.gz";
    name = "0.3.8-1.tar.gz";
    sha256 = "97e124a84c70bc9af3a73480702e81cd3a742724c049761a9aeaf4b4fddd058f";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Vendor package for concurrent queues from moodycamel'';
    license = with lib.licenses; [ asl20 ];
  };
}
