
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, spdlog }:
buildRosPackage {
  pname = "ros-humble-wirestead";
  version = "0.10.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/wirestead-release/archive/release/humble/wirestead/0.10.0-2.tar.gz";
    name = "0.10.0-2.tar.gz";
    sha256 = "c7768916785dbe57a1e600e45a90c6f8b25e0fd0ff1aa7635cc6aeecffb7e901";
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
