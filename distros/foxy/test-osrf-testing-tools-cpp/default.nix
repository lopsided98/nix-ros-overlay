
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-foxy-test-osrf-testing-tools-cpp";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_testing_tools_cpp-release/archive/release/foxy/test_osrf_testing_tools_cpp/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "5a63a3c96ca015cc0ac3e9ba54d83320cd014fb0f67105a114c69a22b22f9bf3";
  };

  buildType = "cmake";
  checkInputs = [ osrf-testing-tools-cpp ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Test package, which uses things exported by osrf_testing_tools_cpp.'';
    license = with lib.licenses; [ asl20 ];
  };
}
