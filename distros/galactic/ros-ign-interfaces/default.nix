
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-ros-ign-interfaces";
  version = "0.233.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/galactic/ros_ign_interfaces/0.233.2-1.tar.gz";
    name = "0.233.2-1.tar.gz";
    sha256 = "d150df575a1846f69dfb53712a099e3c99cea23c039dd576bc9fbe36773e98ea";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Message and service data structures for interacting with Ignition from ROS2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
