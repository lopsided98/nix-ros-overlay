
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, performance-test-fixture, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-kilted-rosidl-runtime-cpp";
  version = "4.9.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/kilted/rosidl_runtime_cpp/4.9.4-2.tar.gz";
    name = "4.9.4-2.tar.gz";
    sha256 = "a47424522fb625867e2e7e2e4708aa1fe1ec0416fd9cc577b213fc27f2b00fe9";
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
