
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-galactic-gazebo-msgs";
  version = "3.5.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/galactic/gazebo_msgs/3.5.2-5.tar.gz";
    name = "3.5.2-5.tar.gz";
    sha256 = "d5bc37c67e3b319d00747be3a0aff36bcb102db00aadb562376b9ff0e341defb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Message and service data structures for interacting with Gazebo from ROS2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
