
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, test-interface-files }:
buildRosPackage {
  pname = "ros-jazzy-test-msgs";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/jazzy/test_msgs/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "7b7819dee3d69bd293b1b108c11274f2cbb1d067a227d5397b3c72e08eb9bb13";
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
