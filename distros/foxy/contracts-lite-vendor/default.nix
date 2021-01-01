
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-contracts-lite-vendor";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-safety/contracts_lite_vendor-release/archive/release/foxy/contracts_lite_vendor/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "98016a6194f9b9f14872d2223776144370788f0247391886046d2735ed0635c8";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 wrapper for the Contracts Lite project.'';
    license = with lib.licenses; [ asl20 ];
  };
}
