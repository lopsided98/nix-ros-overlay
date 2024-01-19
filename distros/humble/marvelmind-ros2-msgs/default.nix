
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-marvelmind-ros2-msgs";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/MarvelmindRobotics/marvelmind_ros2_msgs_release/archive/release/humble/marvelmind_ros2_msgs/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "0c0fd3f728b00a79ecc089b18f80b5bbd5d4ceb4bc3d96827121d15f70665517";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Marvelmind message package for ROS2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
