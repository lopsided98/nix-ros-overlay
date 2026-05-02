
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-msgs, rosidl-default-generators, rosidl-default-runtime, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-moveit-task-constructor-msgs";
  version = "0.1.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_task_constructor-release/archive/release/rolling/moveit_task_constructor_msgs/0.1.5-2.tar.gz";
    name = "0.1.5-2.tar.gz";
    sha256 = "65225dbaa012aaab83d62f6028e662b943da7123c588f538bb7ee8c2c84fc646";
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
