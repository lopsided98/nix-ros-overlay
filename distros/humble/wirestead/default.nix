
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, spdlog }:
buildRosPackage {
  pname = "ros-humble-wirestead";
  version = "0.9.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/wirestead-release/archive/release/humble/wirestead/0.9.6-1.tar.gz";
    name = "0.9.6-1.tar.gz";
    sha256 = "9d705374b321a80341ad8f0298c6ba9334b3918bb754da76007dd48de02122a7";
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
