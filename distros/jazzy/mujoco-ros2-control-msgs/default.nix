
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-mujoco-ros2-control-msgs";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_ros2_control-release/archive/release/jazzy/mujoco_ros2_control_msgs/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "03eda7975a123ec156f0890496d200d61b739c4e5c0591c7fbf9eb6bfb818bfc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "msgs for mujoco_ros2_control package";
    license = with lib.licenses; [ asl20 ];
  };
}
