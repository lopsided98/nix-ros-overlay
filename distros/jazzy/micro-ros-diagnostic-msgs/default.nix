
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-micro-ros-diagnostic-msgs";
  version = "0.3.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/micro_ros_diagnostics-release/archive/release/jazzy/micro_ros_diagnostic_msgs/0.3.0-6.tar.gz";
    name = "0.3.0-6.tar.gz";
    sha256 = "de2d0adf80c7bbe612c0ece110a27f737af15e050be4d167315ebf41801762a6";
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
