
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-humble-osrf-testing-tools-cpp";
  version = "1.5.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_testing_tools_cpp-release/archive/release/humble/osrf_testing_tools_cpp/1.5.1-2.tar.gz";
    name = "1.5.1-2.tar.gz";
    sha256 = "c1844a7e6741871fda08ce4c5574b694df092529612815dde7c28193315f1bfd";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Testing tools for C++, and is used in various OSRF projects.'';
    license = with lib.licenses; [ asl20 ];
  };
}
