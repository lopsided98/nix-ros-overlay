
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-cartographer-ros-msgs";
  version = "2.0.9003-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer_ros-release/archive/release/jazzy/cartographer_ros_msgs/2.0.9003-2.tar.gz";
    name = "2.0.9003-2.tar.gz";
    sha256 = "87158121046f43e9f54226ad24ed436ebdd3ff162cd8d9cd57fecdb16bd8dcbe";
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
