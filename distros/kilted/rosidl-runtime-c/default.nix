
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, performance-test-fixture, rcutils, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-kilted-rosidl-runtime-c";
  version = "4.9.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/kilted/rosidl_runtime_c/4.9.4-2.tar.gz";
    name = "4.9.4-2.tar.gz";
    sha256 = "dc9abdc99dc327edd89980c6109a6ea0755ede1928d23f0b36e265755d4de1b6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros-core ];
  checkInputs = [ ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ ament-cmake rcutils rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Provides definitions, initialization and finalization functions, and macros for getting and working with rosidl typesupport types in C.";
    license = with lib.licenses; [ asl20 ];
  };
}
