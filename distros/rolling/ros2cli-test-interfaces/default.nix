
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-ros2cli-test-interfaces";
  version = "0.31.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2cli_test_interfaces/0.31.1-2.tar.gz";
    name = "0.31.1-2.tar.gz";
    sha256 = "cf93c086b1074eef92380a4c5282995fcf7dad03db2b3e346d6aae04cf581a21";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing interface definitions for testing ros2cli.'';
    license = with lib.licenses; [ asl20 ];
  };
}
