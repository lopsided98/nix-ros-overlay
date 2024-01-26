
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-ros2cli-test-interfaces";
  version = "0.18.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/humble/ros2cli_test_interfaces/0.18.8-1.tar.gz";
    name = "0.18.8-1.tar.gz";
    sha256 = "47ad7be107dff88264fe9c0cfbe0b0a35a92babcae3b82f2380f5381a2f85aad";
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
