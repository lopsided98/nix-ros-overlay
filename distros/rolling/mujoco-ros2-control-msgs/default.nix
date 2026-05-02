
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-mujoco-ros2-control-msgs";
  version = "0.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_ros2_control-release/archive/release/rolling/mujoco_ros2_control_msgs/0.0.2-2.tar.gz";
    name = "0.0.2-2.tar.gz";
    sha256 = "4b0d589dca6c49511a4d0f5512ea715fb5d457df59a7ef72cea7d5bf470507d9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "msgs for mujoco_ros2_control package";
    license = with lib.licenses; [ asl20 ];
  };
}
