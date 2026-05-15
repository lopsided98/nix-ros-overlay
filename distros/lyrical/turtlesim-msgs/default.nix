
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-turtlesim-msgs";
  version = "1.10.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_tutorials-release/archive/release/lyrical/turtlesim_msgs/1.10.9-1.tar.gz";
    name = "1.10.9-1.tar.gz";
    sha256 = "0ad92d3d796251d44a7c3b8ea685aaf8cc09a7df3693d73d5d4b0faaf463915e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "turtlesim messages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
