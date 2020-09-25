
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-contracts-lite-vendor";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-safety/contracts_lite_vendor-release/archive/release/dashing/contracts_lite_vendor/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "53b27e165b2437a0a9eb021edaf6d5e698b0de0fd78593aebbad54ad7b102751";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 wrapper for the Contracts Lite project.'';
    license = with lib.licenses; [ asl20 ];
  };
}
