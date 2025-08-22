
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-kilted-osrf-testing-tools-cpp";
  version = "2.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_testing_tools_cpp-release/archive/release/kilted/osrf_testing_tools_cpp/2.2.0-2.tar.gz";
    name = "2.2.0-2.tar.gz";
    sha256 = "34594aed2700fa3b95e43e886438b8e32bd526efed88d3e5b1a8e801229ab59f";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Testing tools for C++, and is used in various OSRF projects.";
    license = with lib.licenses; [ asl20 ];
  };
}
