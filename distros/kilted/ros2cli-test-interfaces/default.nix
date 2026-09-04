
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-ros2cli-test-interfaces";
  version = "0.38.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/kilted/ros2cli_test_interfaces/0.38.5-1.tar.gz";
    name = "0.38.5-1.tar.gz";
    sha256 = "823178c65ab0ac7b4918350f81875bf45fe6a3391fc07756e77052c317f53184";
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
