
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, geometry-msgs, rosidl-default-runtime, std-msgs, ament-lint-common, ament-cmake, rosidl-default-generators, builtin-interfaces }:
buildRosPackage {
  pname = "ros-crystal-gazebo-msgs";
  version = "3.2.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/crystal/gazebo_msgs/3.2.0-0.tar.gz";
    name = "3.2.0-0.tar.gz";
    sha256 = "2d9081921a5f60dd3cc5a886d1bf96e54d2a1d4620aa59e766f71b543e57f7f5";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs builtin-interfaces geometry-msgs trajectory-msgs ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ trajectory-msgs geometry-msgs rosidl-default-runtime std-msgs builtin-interfaces ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Message and service data structures for interacting with Gazebo from ROS2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
