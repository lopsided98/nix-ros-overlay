
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-interfaces";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_interfaces/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "73fe0e3d46833eb0c07a76721ed4deb6be5623d60611edd26b83178be76df7c7";
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
