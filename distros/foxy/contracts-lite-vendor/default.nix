
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-contracts-lite-vendor";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-safety/contracts_lite_vendor-release/archive/release/foxy/contracts_lite_vendor/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "7c2093ce3105a8873e277a2c9abe20bdd45fab5cdb01d31718d065f317001645";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 wrapper for the Contracts Lite project.'';
    license = with lib.licenses; [ asl20 ];
  };
}
