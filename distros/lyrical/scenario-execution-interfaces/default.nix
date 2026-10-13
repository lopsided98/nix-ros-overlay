
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-scenario-execution-interfaces";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/lyrical/scenario_execution_interfaces/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "24d59f586837b744ad865b0e8785e8abe73d392246cca2c16552f6a34ab2d796";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 Interfaces for Scenario Execution";
    license = with lib.licenses; [ asl20 ];
  };
}
