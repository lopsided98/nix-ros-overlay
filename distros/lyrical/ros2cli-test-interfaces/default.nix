
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-ros2cli-test-interfaces";
  version = "0.40.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/lyrical/ros2cli_test_interfaces/0.40.10-1.tar.gz";
    name = "0.40.10-1.tar.gz";
    sha256 = "9d3d468972b48d2f93c4bb5abe311f8a3aea309f73fe5c4e8fe813d23a3ca178";
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
