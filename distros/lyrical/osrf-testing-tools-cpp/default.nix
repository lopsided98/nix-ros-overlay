
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-lyrical-osrf-testing-tools-cpp";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_testing_tools_cpp-release/archive/release/lyrical/osrf_testing_tools_cpp/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "11158f00e57ad101257b7abf529a8ec7dba950136a5f76231199b657ff72d033";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Testing tools for C++, and is used in various OSRF projects.";
    license = with lib.licenses; [ asl20 ];
  };
}
