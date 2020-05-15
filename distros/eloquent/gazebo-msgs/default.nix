
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-eloquent-gazebo-msgs";
  version = "3.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/eloquent/gazebo_msgs/3.4.4-1.tar.gz";
    name = "3.4.4-1.tar.gz";
    sha256 = "3048b58d6f54cc4d4b90ad86fe72b6ed43748001273dd02aa26e06ad0a818870";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Message and service data structures for interacting with Gazebo from ROS2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
