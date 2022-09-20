
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-turtlebot3-msgs";
  version = "2.2.2-r3";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3_msgs-release/archive/release/galactic/turtlebot3_msgs/2.2.2-3.tar.gz";
    name = "2.2.2-3.tar.gz";
    sha256 = "d9c9487a81573d590ccd599c9a8521c2d5acfe6d3dcb6d3dabe0af19bed97a04";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Message and service types: custom messages and services for TurtleBot3 packages for ROS2'';
    license = with lib.licenses; [ asl20 ];
  };
}
