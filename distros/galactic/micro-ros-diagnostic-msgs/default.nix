
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-micro-ros-diagnostic-msgs";
  version = "0.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/micro_ros_diagnostics-release/archive/release/galactic/micro_ros_diagnostic_msgs/0.2.0-4.tar.gz";
    name = "0.2.0-4.tar.gz";
    sha256 = "31ceb40a77d1c2b0fd10295bfd958b702f6d4bd950bc2b30942f387977f413eb";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing  diagnostics related messages and service definitions for micro-ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
