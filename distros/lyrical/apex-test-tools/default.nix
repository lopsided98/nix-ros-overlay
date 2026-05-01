
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, ament-cmake-pclint, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-lyrical-apex-test-tools";
  version = "0.0.2-r10";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apex_test_tools-release/archive/release/lyrical/apex_test_tools/0.0.2-10.tar.gz";
    name = "0.0.2-10.tar.gz";
    sha256 = "e6ea76f417af19e8167a8fc18deff1923129b7d8c62de5f9e694b476120e71c1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ];
  checkInputs = [ ament-cmake-pclint ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-gtest osrf-testing-tools-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ];

  meta = {
    description = "The package Apex.OS Test Tools contains test helpers";
    license = with lib.licenses; [ asl20 ];
  };
}
