
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-osrf-testing-tools-cpp";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_testing_tools_cpp-release/archive/release/rolling/osrf_testing_tools_cpp/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "df484a4a0c0d6d5b13e72271bd146485c7b0a470191e69acb54199813cd2be0f";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Testing tools for C++, and is used in various OSRF projects.'';
    license = with lib.licenses; [ asl20 ];
  };
}
