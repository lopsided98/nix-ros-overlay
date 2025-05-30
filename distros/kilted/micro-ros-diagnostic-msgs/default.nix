
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-micro-ros-diagnostic-msgs";
  version = "0.3.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/micro_ros_diagnostics-release/archive/release/kilted/micro_ros_diagnostic_msgs/0.3.0-6.tar.gz";
    name = "0.3.0-6.tar.gz";
    sha256 = "648405b5b938fc8b63366feb29b06c869bc68ed6a36dbfae20ac9c8026f2a251";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Ccontains messages and service definitions for micro-ROS diagnostics.";
    license = with lib.licenses; [ asl20 ];
  };
}
