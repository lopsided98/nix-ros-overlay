
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-cartographer-ros-msgs";
  version = "2.0.9002-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer_ros-release/archive/release/humble/cartographer_ros_msgs/2.0.9002-1.tar.gz";
    name = "2.0.9002-1.tar.gz";
    sha256 = "1a86383b76c72cff09585fdc2a203315a0d96853d20cf81f2a61686c15bf126e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS messages for the cartographer_ros package.";
    license = with lib.licenses; [ asl20 ];
  };
}
