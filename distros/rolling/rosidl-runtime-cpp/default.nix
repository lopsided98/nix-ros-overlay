
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, performance-test-fixture, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-rolling-rosidl-runtime-cpp";
  version = "4.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_runtime_cpp/4.3.1-1.tar.gz";
    name = "4.3.1-1.tar.gz";
    sha256 = "2bca68acd76b4ff0a5691e3d550ee2170b06edf35142184cd0893457752ca1c2";
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
