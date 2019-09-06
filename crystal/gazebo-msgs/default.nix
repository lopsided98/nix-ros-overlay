
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, ament-lint-common, trajectory-msgs, rosidl-default-generators, std-msgs, rosidl-default-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-crystal-gazebo-msgs";
  version = "3.2.0";

  src = fetchurl {
    url = https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/crystal/gazebo_msgs/3.2.0-0.tar.gz;
    sha256 = "2d9081921a5f60dd3cc5a886d1bf96e54d2a1d4620aa59e766f71b543e57f7f5";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs trajectory-msgs geometry-msgs builtin-interfaces ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces trajectory-msgs std-msgs rosidl-default-runtime geometry-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Message and service data structures for interacting with Gazebo from ROS2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
