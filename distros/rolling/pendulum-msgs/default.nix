
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-pendulum-msgs";
  version = "0.33.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/pendulum_msgs/0.33.2-1.tar.gz";
    name = "0.33.2-1.tar.gz";
    sha256 = "2404b01ef33279bbd46b2b7c93eacfbac714684fe774ccacf95ecccedc2c6348";
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
