
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, osrf-testing-tools-cpp }:
buildRosPackage rec {
  pname = "ros-dashing-test-osrf-testing-tools-cpp";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_testings_tools_cpp-release/archive/release/dashing/test_osrf_testing_tools_cpp/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "c915c2c8f93288002afff83a2d50b2ce77121657a25fb39ff94988480a795a9a";
  };

  buildType = "cmake";
  checkInputs = [ osrf-testing-tools-cpp ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Test package, which uses things exported by osrf_testing_tools_cpp.'';
    license = with lib.licenses; [ asl20 ];
  };
}
