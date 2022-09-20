
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-turtlebot3-msgs";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3_msgs-release/archive/release/foxy/turtlebot3_msgs/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "c719eb9258d4c141b716b01c4755071b43b79eeb4008033db5dda574e0cf5e2a";
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
