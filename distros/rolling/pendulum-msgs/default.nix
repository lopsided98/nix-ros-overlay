
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-pendulum-msgs";
  version = "0.37.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/pendulum_msgs/0.37.0-1.tar.gz";
    name = "0.37.0-1.tar.gz";
    sha256 = "3d0fb5054d0b2c8aea9305b8831d8114cf17c956f2c36dee8b72dc6f149892a7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Custom messages for real-time pendulum control.";
    license = with lib.licenses; [ asl20 ];
  };
}
