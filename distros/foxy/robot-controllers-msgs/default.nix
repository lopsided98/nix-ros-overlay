
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-foxy-robot-controllers-msgs";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/robot_controllers-ros2-release/archive/release/foxy/robot_controllers_msgs/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "3d3e5b50b93f840a791d4a6314ccc583ff3d20a1a8ccaabcb04f3c185367338d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-generators rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages for use with robot_controllers framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
