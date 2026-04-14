
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, performance-test-fixture, rcutils, rosidl-buffer, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-rolling-rosidl-runtime-c";
  version = "5.1.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_runtime_c/5.1.4-2.tar.gz";
    name = "5.1.4-2.tar.gz";
    sha256 = "0f2d70cd7a524540834ee477cf167d2b0ac2ea574cacfd5a509822dd69f50704";
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
