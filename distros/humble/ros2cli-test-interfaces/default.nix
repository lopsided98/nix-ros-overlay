
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-ros2cli-test-interfaces";
  version = "0.18.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/humble/ros2cli_test_interfaces/0.18.6-2.tar.gz";
    name = "0.18.6-2.tar.gz";
    sha256 = "dd056a0a28405ccd571ab46acad3ff0ac3f0afe545ddb7c68ac6239ef071c56b";
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
