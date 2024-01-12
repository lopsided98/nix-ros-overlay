
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, performance-test-fixture, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-iron-rosidl-runtime-cpp";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/iron/rosidl_runtime_cpp/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "9d9cf0b8fdbae856de8f0b5c560fb333fc476a291819e60eae6977c0ab32535d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ ament-cmake rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides definitions and templated functions for getting and working with rosidl typesupport types in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
