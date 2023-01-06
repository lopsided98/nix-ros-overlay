
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, test-interface-files }:
buildRosPackage {
  pname = "ros-rolling-test-msgs";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/rolling/test_msgs/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "e290ba8105408143570cf0b7ac2fadfc71b3ed58160610789e025c46bd0526dc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators test-interface-files ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing message definitions and fixtures used exclusively for testing purposes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
