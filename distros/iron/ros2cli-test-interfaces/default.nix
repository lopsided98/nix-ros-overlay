
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-ros2cli-test-interfaces";
  version = "0.25.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/iron/ros2cli_test_interfaces/0.25.1-1.tar.gz";
    name = "0.25.1-1.tar.gz";
    sha256 = "7b321079671df2ec34b9e88998abb054e73d080860177cf016c7e7bf5a50f6ee";
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
