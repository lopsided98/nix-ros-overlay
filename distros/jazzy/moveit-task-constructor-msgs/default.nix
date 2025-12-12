
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-msgs, rosidl-default-generators, rosidl-default-runtime, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-moveit-task-constructor-msgs";
  version = "0.1.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_task_constructor-release/archive/release/jazzy/moveit_task_constructor_msgs/0.1.4-3.tar.gz";
    name = "0.1.4-3.tar.gz";
    sha256 = "3df1fdc221892b9e4cdc468ad6f517b2c040e86867367b67631bf630ed380809";
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
