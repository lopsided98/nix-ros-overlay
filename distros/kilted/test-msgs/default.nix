
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, test-interface-files }:
buildRosPackage {
  pname = "ros-kilted-test-msgs";
  version = "2.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/kilted/test_msgs/2.3.0-2.tar.gz";
    name = "2.3.0-2.tar.gz";
    sha256 = "3b208a30b926b2d63a60612195790b004dcb4ae1ecd87f98882dacee2800dc40";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators test-interface-files ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing message definitions and fixtures used exclusively for testing purposes.";
    license = with lib.licenses; [ asl20 ];
  };
}
