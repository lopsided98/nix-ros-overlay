
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-humble-osrf-testing-tools-cpp";
  version = "1.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_testing_tools_cpp-release/archive/release/humble/osrf_testing_tools_cpp/1.5.2-1.tar.gz";
    name = "1.5.2-1.tar.gz";
    sha256 = "cf31473654d3e6e5e29d64354d01ff36375d1f8f7f5a084c5f95cd7e84da93f4";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Testing tools for C++, and is used in various OSRF projects.'';
    license = with lib.licenses; [ asl20 ];
  };
}
