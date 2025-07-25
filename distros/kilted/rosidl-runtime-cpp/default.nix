
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, performance-test-fixture, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-kilted-rosidl-runtime-cpp";
  version = "5.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/kilted/rosidl_runtime_cpp/5.0.0-1.tar.gz";
    name = "5.0.0-1.tar.gz";
    sha256 = "8ba4c91a107f5e9e143d5ef49f965938aeb3ac6e29a533d97aa5fbfba4bbd373";
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
