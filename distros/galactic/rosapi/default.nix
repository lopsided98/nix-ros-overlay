
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake-ros, builtin-interfaces, geometry-msgs, rcl-interfaces, rclpy, rmw-dds-common, ros2node, ros2param, ros2pkg, ros2service, ros2topic, rosbridge-library, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, shape-msgs }:
buildRosPackage {
  pname = "ros-galactic-rosapi";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/galactic/rosapi/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "7bbf4256c6e5bbe6a68b024bca1ab31e93076fe63895009cb422fc570ffdcbcc";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest geometry-msgs rmw-dds-common sensor-msgs shape-msgs ];
  propagatedBuildInputs = [ builtin-interfaces rcl-interfaces rclpy ros2node ros2param ros2pkg ros2service ros2topic rosbridge-library rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake-ros rosidl-default-generators ];

  meta = {
    description = ''Provides service calls for getting ros meta-information, like list of
    topics, services, params, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
