
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake-ros, builtin-interfaces, geometry-msgs, rcl-interfaces, rclpy, rmw-dds-common, ros2node, ros2param, ros2pkg, ros2service, ros2topic, rosapi-msgs, rosbridge-library, sensor-msgs, shape-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosapi";
  version = "1.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/rolling/rosapi/1.3.1-2.tar.gz";
    name = "1.3.1-2.tar.gz";
    sha256 = "b84964b0cdaf37bf38c8f690d1cb1efdffd365a01a4f46e984d12891f23de5be";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-pytest geometry-msgs rmw-dds-common sensor-msgs shape-msgs ];
  propagatedBuildInputs = [ builtin-interfaces rcl-interfaces rclpy ros2node ros2param ros2pkg ros2service ros2topic rosapi-msgs rosbridge-library ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Provides service calls for getting ros meta-information, like list of
    topics, services, params, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
