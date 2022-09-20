
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-micro-ros-diagnostic-msgs";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/micro_ros_diagnostics-release/archive/release/galactic/micro_ros_diagnostic_msgs/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "815fc35ca5439e2bb508bd5f16b3ebefa07b64c65a89b27184aa7224c6f136e4";
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
