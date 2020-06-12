
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-foxy-osrf-testing-tools-cpp";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_testings_tools_cpp-release/archive/release/foxy/osrf_testing_tools_cpp/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "e45c6bfaaf2feb2cd5fdad1a85efc2219d7621db4adaaf8344ab69e9f292b8b3";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Testing tools for C++, and is used in various OSRF projects.'';
    license = with lib.licenses; [ asl20 ];
  };
}
