
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-msgs, rosidl-default-generators, rosidl-default-runtime, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-moveit-task-constructor-msgs";
  version = "0.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_task_constructor-release/archive/release/jazzy/moveit_task_constructor_msgs/0.1.8-1.tar.gz";
    name = "0.1.8-1.tar.gz";
    sha256 = "f9812c10c149a69a924e97c5a4123dc4214967f7bef9962a6d8bf1e96a8abfb4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ moveit-msgs rosidl-default-runtime visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Messages for MoveIt Task Pipeline";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
