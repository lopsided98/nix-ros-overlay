
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-msgs, rosidl-default-generators, rosidl-default-runtime, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-moveit-task-constructor-msgs";
  version = "0.1.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_task_constructor-release/archive/release/kilted/moveit_task_constructor_msgs/0.1.4-2.tar.gz";
    name = "0.1.4-2.tar.gz";
    sha256 = "def1eed67bea817b1a7d27aa0531f1446ae02e4b70b98be62e165efe5d031013";
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
