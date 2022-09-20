
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-micro-ros-diagnostic-msgs";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/micro_ros_diagnostics-release/archive/release/foxy/micro_ros_diagnostic_msgs/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "56db0f97346c8935919a71aa0149f39f032a811a1c927b1c58288ae3d0516845";
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
