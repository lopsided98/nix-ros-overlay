
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-contracts-lite-vendor";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/MaplessAI/external/contracts_lite_vendor-release/repository/archive.tar.gz?ref=release/dashing/contracts_lite_vendor/0.3.1-1";
    name = "archive.tar.gz";
    sha256 = "4a61a25d586ab45b89aced21b5575d5b0fdd064090b9ba8b339ede10f97c7f70";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 wrapper for the Contracts Lite project.'';
    license = with lib.licenses; [ asl20 ];
  };
}
