
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-ur-msgs";
  version = "2.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ur_msgs-release/archive/release/rolling/ur_msgs/2.0.0-3.tar.gz";
    name = "2.0.0-3.tar.gz";
    sha256 = "8d7c0af3c6626d90986af9b07702d014eb0109ef37d0a06e054653efa0297e15";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Message and service definitions for interacting with Universal Robots robot controllers.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
