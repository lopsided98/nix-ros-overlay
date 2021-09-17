
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-foxy-osrf-testing-tools-cpp";
  version = "1.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_testing_tools_cpp-release/archive/release/foxy/osrf_testing_tools_cpp/1.3.4-1.tar.gz";
    name = "1.3.4-1.tar.gz";
    sha256 = "98f3344389c89ad4266310729ed091cc523b3bd3827760aa36e55b2eacf071f8";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Testing tools for C++, and is used in various OSRF projects.'';
    license = with lib.licenses; [ asl20 ];
  };
}
