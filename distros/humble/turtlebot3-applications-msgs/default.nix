
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-applications-msgs";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_applications_msgs-release/archive/release/humble/turtlebot3_applications_msgs/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "4417b04ae5d87127509fd63f3ba483da35f67a7ba9bcb384894986c98d9f4de9";
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
