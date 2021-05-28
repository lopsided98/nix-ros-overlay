
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-dashing-osrf-testing-tools-cpp";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_testing_tools_cpp-release/archive/release/dashing/osrf_testing_tools_cpp/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "11f7cf3dd75ce474bdf58e1e6c49afe35403c5f741d50353dfa08134e89e0079";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Testing tools for C++, and is used in various OSRF projects.'';
    license = with lib.licenses; [ asl20 ];
  };
}
