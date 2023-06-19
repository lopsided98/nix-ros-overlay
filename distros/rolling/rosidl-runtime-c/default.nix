
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, performance-test-fixture, rcutils, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-rolling-rosidl-runtime-c";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_runtime_c/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "af40de3c4f226c9cccec6c6b620d0b1e13e86ba8cca5aa9bb24d4e86b6950376";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ ament-cmake rcutils rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = ''Provides definitions, initialization and finalization functions, and macros for getting and working with rosidl typesupport types in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
