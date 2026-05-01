
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-turtlebot3-msgs";
  version = "2.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_msgs-release/archive/release/lyrical/turtlebot3_msgs/2.4.0-3.tar.gz";
    name = "2.4.0-3.tar.gz";
    sha256 = "7cc140358fa7a47385ebae1376ddcffd106840bd6ed45b3dcc5312abea7f752d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Message and service types: custom messages and services for TurtleBot3 packages for ROS 2";
    license = with lib.licenses; [ asl20 ];
  };
}
