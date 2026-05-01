
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-msgs, rosidl-default-generators, rosidl-default-runtime, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-moveit-task-constructor-msgs";
  version = "0.1.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_task_constructor-release/archive/release/lyrical/moveit_task_constructor_msgs/0.1.5-3.tar.gz";
    name = "0.1.5-3.tar.gz";
    sha256 = "c1e798d5637c24070e1cb90c0f84f99d5d0872927b0ad05dce184450f3d343ac";
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
