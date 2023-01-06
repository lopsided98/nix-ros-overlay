
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-osrf-testing-tools-cpp";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_testing_tools_cpp-release/archive/release/rolling/osrf_testing_tools_cpp/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "67774cad82f65cec778006841bbfe8e653221fb8167c1c7221bbe008b03844c9";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Testing tools for C++, and is used in various OSRF projects.'';
    license = with lib.licenses; [ asl20 ];
  };
}
