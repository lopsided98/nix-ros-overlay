
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-nose, ament-cmake-ros, builtin-interfaces, rcl-interfaces, rclpy, ros2node, ros2param, ros2pkg, ros2service, ros2topic, rosbridge-library, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-galactic-rosapi";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/galactic/rosapi/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "cdb0b9c9f89153a3d2112e34073e3c97e5288b5e981aee7a0e5bc95d975b1ad4";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-nose ];
  propagatedBuildInputs = [ builtin-interfaces rcl-interfaces rclpy ros2node ros2param ros2pkg ros2service ros2topic rosbridge-library rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake-ros rosidl-default-generators ];

  meta = {
    description = ''Provides service calls for getting ros meta-information, like list of
    topics, services, params, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
