
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-interfaces";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_interfaces/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "0d385cc7bc87e26ab87d8c09fd402accbf17f5ab395545276bcdeb9ebdc47e3a";
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
