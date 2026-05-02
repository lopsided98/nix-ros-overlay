
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-micro-ros-diagnostic-msgs";
  version = "0.3.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/micro_ros_diagnostics-release/archive/release/rolling/micro_ros_diagnostic_msgs/0.3.0-6.tar.gz";
    name = "0.3.0-6.tar.gz";
    sha256 = "e2a5f6c93b219d5bc70549e5bf83fb222af18c43522d7c721caae493e7b7063e";
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
