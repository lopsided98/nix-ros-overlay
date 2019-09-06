
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, ament-lint-common, trajectory-msgs, rosidl-default-generators, std-msgs, rosidl-default-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-gazebo-msgs";
  version = "3.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/dashing/gazebo_msgs/3.3.3-1.tar.gz";
    name = "3.3.3-1.tar.gz";
    sha256 = "ce3bbc29e4d64a157c3fa9944eb22680b1461a8bd61305224a57e532d87a4fde";
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
