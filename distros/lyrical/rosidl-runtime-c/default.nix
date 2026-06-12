
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, performance-test-fixture, rcutils, rosidl-buffer, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-lyrical-rosidl-runtime-c";
  version = "5.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/lyrical/rosidl_runtime_c/5.2.1-1.tar.gz";
    name = "5.2.1-1.tar.gz";
    sha256 = "5b511fb39a1c08056daf83812cf4ee945b25e16c4bf92cc74c34abfd6ec7a8a0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros-core ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ ament-cmake rcutils rosidl-buffer rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Provides definitions, initialization and finalization functions, and macros for getting and working with rosidl typesupport types in C.";
    license = with lib.licenses; [ asl20 ];
  };
}
