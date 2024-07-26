
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-pendulum-msgs";
  version = "0.34.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/pendulum_msgs/0.34.1-1.tar.gz";
    name = "0.34.1-1.tar.gz";
    sha256 = "1ffbfc7b6f45b66dda0388a3baf5ec5686142564ff42d657703dcc2e65c84f84";
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
