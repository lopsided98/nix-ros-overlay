
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, spdlog }:
buildRosPackage {
  pname = "ros-jazzy-wirestead";
  version = "0.9.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/wirestead-release/archive/release/jazzy/wirestead/0.9.6-1.tar.gz";
    name = "0.9.6-1.tar.gz";
    sha256 = "8c9b1f5896d4e438c5bbe8e6e9a6c7ded47e142a4906f955763b29fe15885b7c";
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
