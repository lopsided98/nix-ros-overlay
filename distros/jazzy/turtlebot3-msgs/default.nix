
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-msgs";
  version = "2.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_msgs-release/archive/release/jazzy/turtlebot3_msgs/2.2.1-5.tar.gz";
    name = "2.2.1-5.tar.gz";
    sha256 = "55f9d98593aebddd637a78ef1355b40bfab2280058b33f3d9a17c9f2bd52cdf9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Message and service types: custom messages and services for TurtleBot3 packages for ROS2";
    license = with lib.licenses; [ asl20 ];
  };
}
