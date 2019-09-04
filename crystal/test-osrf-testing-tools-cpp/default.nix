
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-crystal-test-osrf-testing-tools-cpp";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/ros2-gbp/osrf_testings_tools_cpp-release/archive/release/crystal/test_osrf_testing_tools_cpp/1.1.0-0.tar.gz;
    sha256 = "1067dd7000f2588b491c497ab81fc7ace0c5e8be01ecb1ec000479e0a9842e8f";
  };

  checkInputs = [ osrf-testing-tools-cpp ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Test package, which uses things exported by osrf_testing_tools_cpp.'';
    license = with lib.licenses; [ asl20 ];
  };
}
