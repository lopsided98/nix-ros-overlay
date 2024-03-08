
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, performance-test-fixture, rcutils, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-rolling-rosidl-runtime-c";
  version = "4.5.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_runtime_c/4.5.1-2.tar.gz";
    name = "4.5.1-2.tar.gz";
    sha256 = "9426d77ccf533abbfdd44329164fbdbb13ca8377b87f4d3715657cecafc21b20";
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
