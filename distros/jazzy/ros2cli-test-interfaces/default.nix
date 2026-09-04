
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-ros2cli-test-interfaces";
  version = "0.32.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/jazzy/ros2cli_test_interfaces/0.32.12-1.tar.gz";
    name = "0.32.12-1.tar.gz";
    sha256 = "2ad0c01b05068d9385615ac1614f95e7cc3d66f796be80c536837c7c51e2b80b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing interface definitions for testing ros2cli.";
    license = with lib.licenses; [ asl20 ];
  };
}
