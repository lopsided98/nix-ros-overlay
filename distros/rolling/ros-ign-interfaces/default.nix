
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros-ign-interfaces";
  version = "0.244.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/rolling/ros_ign_interfaces/0.244.3-2.tar.gz";
    name = "0.244.3-2.tar.gz";
    sha256 = "ce73c16fa6e1b0b92a9ea3527b9f40d60e9c53703dd4d59e798fa83578f5ce2b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Message and service data structures for interacting with Ignition from ROS2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
