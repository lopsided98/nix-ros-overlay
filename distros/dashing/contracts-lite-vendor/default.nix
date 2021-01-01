
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-contracts-lite-vendor";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-safety/contracts_lite_vendor-release/archive/release/dashing/contracts_lite_vendor/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "f05ebea5fb681c75837a7857eef2a8558210945bedfccaec6e518540a61d27b3";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 wrapper for the Contracts Lite project.'';
    license = with lib.licenses; [ asl20 ];
  };
}
