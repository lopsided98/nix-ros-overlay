
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, performance-test-fixture, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-humble-rosidl-runtime-cpp";
  version = "3.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/humble/rosidl_runtime_cpp/3.1.8-1.tar.gz";
    name = "3.1.8-1.tar.gz";
    sha256 = "a22d8e03134e70f9087f109d90f5fc8c04c1944a3fefe8f5ce6dcdbe1ba25f5d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ ament-cmake rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides definitions and templated functions for getting and working with rosidl typesupport types in C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
