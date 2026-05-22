
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-mypy, ament-lint-auto, ament-lint-common, builtin-interfaces, python3Packages, rosidl-default-generators, rosidl-default-runtime, test-interface-files }:
buildRosPackage {
  pname = "ros-lyrical-test-msgs";
  version = "2.4.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/lyrical/test_msgs/2.4.5-1.tar.gz";
    name = "2.4.5-1.tar.gz";
    sha256 = "0896f5c4761131289e526a7726d25c5e8cdaba3a5136cae3eaf3aac035e53796";
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
