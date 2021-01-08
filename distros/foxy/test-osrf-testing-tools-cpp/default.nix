
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-foxy-test-osrf-testing-tools-cpp";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_testings_tools_cpp-release/archive/release/foxy/test_osrf_testing_tools_cpp/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "c4305d66ab841ea1a44618a15187e7d54fb4b3c6beb695f5c312e0f35dc8ed99";
  };

  buildType = "cmake";
  checkInputs = [ osrf-testing-tools-cpp ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Test package, which uses things exported by osrf_testing_tools_cpp.'';
    license = with lib.licenses; [ asl20 ];
  };
}
