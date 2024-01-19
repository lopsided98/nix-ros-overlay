
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-micro-ros-diagnostic-msgs";
  version = "0.3.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/micro_ros_diagnostics-release/archive/release/humble/micro_ros_diagnostic_msgs/0.3.0-4.tar.gz";
    name = "0.3.0-4.tar.gz";
    sha256 = "9760926dee6e72f892a7650a4d4faed9b1b3882d5d09bc892fd85a04f74862f7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Ccontains messages and service definitions for micro-ROS diagnostics.'';
    license = with lib.licenses; [ asl20 ];
  };
}
