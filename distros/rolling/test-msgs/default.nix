
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-mypy, ament-lint-auto, ament-lint-common, builtin-interfaces, python3Packages, rosidl-default-generators, rosidl-default-runtime, test-interface-files }:
buildRosPackage {
  pname = "ros-rolling-test-msgs";
  version = "2.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/rolling/test_msgs/2.5.2-1.tar.gz";
    name = "2.5.2-1.tar.gz";
    sha256 = "059b5ce0048f5d4fa950383f74b502e888fc176d559b8b48bead0c357c579f92";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators test-interface-files ];
  checkInputs = [ ament-cmake-gtest ament-cmake-mypy ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces python3Packages.typing-extensions rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing message definitions and fixtures used exclusively for testing purposes.";
    license = with lib.licenses; [ asl20 ];
  };
}
