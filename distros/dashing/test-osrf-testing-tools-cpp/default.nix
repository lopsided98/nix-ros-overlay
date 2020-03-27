
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-dashing-test-osrf-testing-tools-cpp";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_testings_tools_cpp-release/archive/release/dashing/test_osrf_testing_tools_cpp/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "b5168ed927afbbeb3f17be5913baf27b4f34a3aed3a4c3f199012f2a68d44031";
  };

  buildType = "cmake";
  checkInputs = [ osrf-testing-tools-cpp ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Test package, which uses things exported by osrf_testing_tools_cpp.'';
    license = with lib.licenses; [ asl20 ];
  };
}
