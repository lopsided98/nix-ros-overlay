
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-dashing-test-osrf-testing-tools-cpp";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_testings_tools_cpp-release/archive/release/dashing/test_osrf_testing_tools_cpp/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "1d496b46debc9b6155c316d3cc3519168aee512e107ee2d293dc484863548876";
  };

  buildType = "cmake";
  checkInputs = [ osrf-testing-tools-cpp ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Test package, which uses things exported by osrf_testing_tools_cpp.'';
    license = with lib.licenses; [ asl20 ];
  };
}
