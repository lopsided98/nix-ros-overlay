
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-ros2cli-test-interfaces";
  version = "0.40.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2cli_test_interfaces/0.40.1-1.tar.gz";
    name = "0.40.1-1.tar.gz";
    sha256 = "7c294b0655abc4b8db52d3acaeaca30cd47b5df4ee4f271484aee646c3db8fcc";
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
