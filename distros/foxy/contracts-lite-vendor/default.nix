
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-contracts-lite-vendor";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-safety/contracts_lite_vendor-release/archive/release/foxy/contracts_lite_vendor/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "e6265e1047982dee7b1c2778223e025e667b7f34bfd92817a616bd47ee3dbcc3";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 wrapper for the Contracts Lite project.'';
    license = with lib.licenses; [ asl20 ];
  };
}
