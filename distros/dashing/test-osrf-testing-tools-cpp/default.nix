
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-dashing-test-osrf-testing-tools-cpp";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_testings_tools_cpp-release/archive/release/dashing/test_osrf_testing_tools_cpp/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "a10b02d0080efd58655ada9cf49fd663d491c898256d729b26b9b108ffcfc351";
  };

  buildType = "cmake";
  checkInputs = [ osrf-testing-tools-cpp ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Test package, which uses things exported by osrf_testing_tools_cpp.'';
    license = with lib.licenses; [ asl20 ];
  };
}
