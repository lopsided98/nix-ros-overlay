
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-turtlebot3-applications-msgs";
  version = "1.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_applications_msgs-release/archive/release/lyrical/turtlebot3_applications_msgs/1.0.1-3.tar.gz";
    name = "1.0.1-3.tar.gz";
    sha256 = "4c257781aacfff85cc9203df799156fd138534c5fe0a9dcdd8fb85f3f7656276";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Message and service types: custom messages and services for TurtleBot3 Applications packages";
    license = with lib.licenses; [ asl20 ];
  };
}
