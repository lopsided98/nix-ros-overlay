
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, performance-test-fixture, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-rolling-rosidl-runtime-cpp";
  version = "4.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_runtime_cpp/4.10.0-1.tar.gz";
    name = "4.10.0-1.tar.gz";
    sha256 = "a6309a2bd66dc213a74d6de006fc572f97e5d26406c228617894f45a0f753fc9";
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
