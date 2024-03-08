
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-turtlebot3-msgs";
  version = "2.2.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_msgs-release/archive/release/rolling/turtlebot3_msgs/2.2.1-4.tar.gz";
    name = "2.2.1-4.tar.gz";
    sha256 = "2512d1abe8a0c3c465c4a77f3a202453ec122f56d4edc3ce57f4c9e394f807e5";
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
