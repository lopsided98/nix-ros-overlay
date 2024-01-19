
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-iron-osrf-testing-tools-cpp";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_testing_tools_cpp-release/archive/release/iron/osrf_testing_tools_cpp/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "de1acd09e19a332a06055181641a4d95e3147e0586a49d27e37f56bde1debfe5";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Testing tools for C++, and is used in various OSRF projects.'';
    license = with lib.licenses; [ asl20 ];
  };
}
