
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-mypy, ament-lint-auto, ament-lint-common, builtin-interfaces, python3Packages, rosidl-default-generators, rosidl-default-runtime, test-interface-files }:
buildRosPackage {
  pname = "ros-lyrical-test-msgs";
  version = "2.4.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/lyrical/test_msgs/2.4.4-3.tar.gz";
    name = "2.4.4-3.tar.gz";
    sha256 = "9757e12cd61ef2c26ab11c1789e18acdd91787e872ff89e9731f6e7e2053c7e1";
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
