
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, spdlog }:
buildRosPackage {
  pname = "ros-jazzy-wirestead";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/wirestead-release/archive/release/jazzy/wirestead/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "643bcecb21604288a179ce23ec6f746ea2d309ca330fe115461b41c8f2aa0278";
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
