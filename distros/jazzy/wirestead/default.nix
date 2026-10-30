
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, spdlog }:
buildRosPackage {
  pname = "ros-jazzy-wirestead";
  version = "0.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/wirestead-release/archive/release/jazzy/wirestead/0.10.1-1.tar.gz";
    name = "0.10.1-1.tar.gz";
    sha256 = "3b2688a43fb96023a3f1d5d6ba1ac2fc45633e1da69ca4e73230b5e7d1d5484f";
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
