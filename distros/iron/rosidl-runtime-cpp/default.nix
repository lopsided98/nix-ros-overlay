
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, performance-test-fixture, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-iron-rosidl-runtime-cpp";
  version = "4.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/iron/rosidl_runtime_cpp/4.0.0-2.tar.gz";
    name = "4.0.0-2.tar.gz";
    sha256 = "e4cf04ad7cda7018a883cdef52668e56fe5c1c6ad785f734bb982471d75d0b18";
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
