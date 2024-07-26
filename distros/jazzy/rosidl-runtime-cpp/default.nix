
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, performance-test-fixture, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-jazzy-rosidl-runtime-cpp";
  version = "4.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/jazzy/rosidl_runtime_cpp/4.6.3-1.tar.gz";
    name = "4.6.3-1.tar.gz";
    sha256 = "809faf315ea118023788957df4d4449a191c9e2a1416d24b6e45d159f9f49e01";
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
