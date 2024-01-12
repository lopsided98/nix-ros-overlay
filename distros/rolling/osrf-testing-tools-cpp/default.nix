
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-osrf-testing-tools-cpp";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_testing_tools_cpp-release/archive/release/rolling/osrf_testing_tools_cpp/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "13bc9926c3d325fb4d149e37e56aed193e142b16b34b5779e223e9bc043558e1";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Testing tools for C++, and is used in various OSRF projects.'';
    license = with lib.licenses; [ asl20 ];
  };
}
