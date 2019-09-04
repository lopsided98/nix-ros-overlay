
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-crystal-osrf-testing-tools-cpp";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/ros2-gbp/osrf_testings_tools_cpp-release/archive/release/crystal/osrf_testing_tools_cpp/1.1.0-0.tar.gz;
    sha256 = "853939b29d8c0e8889459cd6bb22fdd69cba853bfaf2099bd4ae5a1b18ba235b";
  };

  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Testing tools for C++, and is used in various OSRF projects.'';
    license = with lib.licenses; [ asl20 ];
  };
}
