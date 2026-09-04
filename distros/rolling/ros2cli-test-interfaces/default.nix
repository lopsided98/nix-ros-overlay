
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-ros2cli-test-interfaces";
  version = "0.42.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2cli_test_interfaces/0.42.0-1.tar.gz";
    name = "0.42.0-1.tar.gz";
    sha256 = "a62f299e07fa78b11d59b60599669c50c7b3b5e538bf304ea30a0f899edb911d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing interface definitions for testing ros2cli.";
    license = with lib.licenses; [ asl20 ];
  };
}
