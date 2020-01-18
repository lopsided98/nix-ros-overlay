
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-eloquent-osrf-testing-tools-cpp";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_testings_tools_cpp-release/archive/release/eloquent/osrf_testing_tools_cpp/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "ed19f3a366790acd830d70ca88ab63c6942939ebeb0b40ac89a2355b3bd43748";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Testing tools for C++, and is used in various OSRF projects.'';
    license = with lib.licenses; [ asl20 ];
  };
}
