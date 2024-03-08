
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-micro-ros-diagnostic-msgs";
  version = "0.3.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/micro_ros_diagnostics-release/archive/release/rolling/micro_ros_diagnostic_msgs/0.3.0-5.tar.gz";
    name = "0.3.0-5.tar.gz";
    sha256 = "bfd160b7b0bcd2ee1cfcaaf453c238e7a11b345367c5f6084f4b31064face42b";
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
