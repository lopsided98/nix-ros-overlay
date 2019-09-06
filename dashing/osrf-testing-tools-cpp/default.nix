
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage rec {
  pname = "ros-dashing-osrf-testing-tools-cpp";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_testings_tools_cpp-release/archive/release/dashing/osrf_testing_tools_cpp/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "fa05588eb92e0f73a87bce1ab9129703553f4bf6e9c8192b6f0da1e8929d9456";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Testing tools for C++, and is used in various OSRF projects.'';
    license = with lib.licenses; [ asl20 ];
  };
}
