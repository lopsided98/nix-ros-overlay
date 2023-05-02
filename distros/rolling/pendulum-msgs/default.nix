
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-pendulum-msgs";
  version = "0.28.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/pendulum_msgs/0.28.0-1.tar.gz";
    name = "0.28.0-1.tar.gz";
    sha256 = "d2d7fc00e727037865584a4e796aac2cb21392df59757ba7897a6a6bf7028014";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Custom messages for real-time pendulum control.'';
    license = with lib.licenses; [ asl20 ];
  };
}
