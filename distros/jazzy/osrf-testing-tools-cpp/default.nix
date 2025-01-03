
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-jazzy-osrf-testing-tools-cpp";
  version = "2.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_testing_tools_cpp-release/archive/release/jazzy/osrf_testing_tools_cpp/2.0.0-3.tar.gz";
    name = "2.0.0-3.tar.gz";
    sha256 = "f8095c78c2a5d6b91c65d919b4bc1ea121d873cabcc206c65a93477ffc27e416";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Testing tools for C++, and is used in various OSRF projects.";
    license = with lib.licenses; [ asl20 ];
  };
}
