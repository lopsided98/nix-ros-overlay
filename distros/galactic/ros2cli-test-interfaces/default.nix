
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-galactic-ros2cli-test-interfaces";
  version = "0.13.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/galactic/ros2cli_test_interfaces/0.13.5-1.tar.gz";
    name = "0.13.5-1.tar.gz";
    sha256 = "607a8421d9885c7f693eb8ba5a6e3c02d9d12de562b34425d6ee2b350ab21cb2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing interface definitions for testing ros2cli.'';
    license = with lib.licenses; [ asl20 ];
  };
}
