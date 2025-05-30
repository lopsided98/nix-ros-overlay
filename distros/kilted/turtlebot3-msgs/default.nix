
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-turtlebot3-msgs";
  version = "2.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_msgs-release/archive/release/kilted/turtlebot3_msgs/2.3.0-2.tar.gz";
    name = "2.3.0-2.tar.gz";
    sha256 = "99b06ed3d4ed33f4d794771fc35750ff72915882afbc7613392b1cd2fb788fda";
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
