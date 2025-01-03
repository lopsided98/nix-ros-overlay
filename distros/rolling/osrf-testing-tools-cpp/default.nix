
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-osrf-testing-tools-cpp";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_testing_tools_cpp-release/archive/release/rolling/osrf_testing_tools_cpp/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "c4b3845ffeae98779fb9e64ff0022c3a7b95abc072b4fe44798cfd9937db1ce3";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Testing tools for C++, and is used in various OSRF projects.";
    license = with lib.licenses; [ asl20 ];
  };
}
