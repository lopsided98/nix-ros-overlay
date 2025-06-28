
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-pendulum-msgs";
  version = "0.37.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/pendulum_msgs/0.37.1-1.tar.gz";
    name = "0.37.1-1.tar.gz";
    sha256 = "33ee28cdf6d61421cfd29c09d0fad5c7ce8c32631d927636324af5bc8cef663b";
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
