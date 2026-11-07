
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, spdlog }:
buildRosPackage {
  pname = "ros-humble-wirestead";
  version = "0.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/wirestead-release/archive/release/humble/wirestead/0.10.1-1.tar.gz";
    name = "0.10.1-1.tar.gz";
    sha256 = "ca9e839e5453ce6024381099e2f02fc2d66f15b60fb9d53f0b85f0d8fae01da8";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost spdlog ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Cross-platform asynchronous C++ communication library for serial, TCP, UDP, and UDS transports.";
    license = with lib.licenses; [ asl20 ];
  };
}
