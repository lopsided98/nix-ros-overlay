
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-eloquent-test-osrf-testing-tools-cpp";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_testings_tools_cpp-release/archive/release/eloquent/test_osrf_testing_tools_cpp/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "32ab5b5aec9f25fb7306bbdf5b61c593fbd85963b404c9967bbe3c5714dcd5e0";
  };

  buildType = "cmake";
  checkInputs = [ osrf-testing-tools-cpp ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Test package, which uses things exported by osrf_testing_tools_cpp.'';
    license = with lib.licenses; [ asl20 ];
  };
}
