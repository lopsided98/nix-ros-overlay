
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, performance-test-fixture, rcutils, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-galactic-rosidl-runtime-c";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/galactic/rosidl_runtime_c/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "5359235333c69e31e10c4553c5121673fc6a62a5e9a90a8b74b7957ff408b149";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ ament-cmake rcutils rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Provides definitions, initialization and finalization functions, and macros for getting and working with rosidl typesupport types in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
