
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-mypy, ament-cmake-pytest, ament-cmake-python, builtin-interfaces, geometry-msgs, rcl-interfaces, rclpy, rmw-dds-common, ros2action, ros2interface, ros2node, ros2param, ros2service, ros2topic, rosapi-msgs, rosbridge-library, rosidl-adapter, rosidl-runtime-py, sensor-msgs, shape-msgs }:
buildRosPackage {
  pname = "ros-humble-rosapi";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/humble/rosapi/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "62f5727de2fe3c9d61efc1146e5fe1b13a8500f0fe8ee46e4a00bfb8390010b3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-mypy ament-cmake-pytest geometry-msgs rmw-dds-common sensor-msgs shape-msgs ];
  propagatedBuildInputs = [ builtin-interfaces rcl-interfaces rclpy ros2action ros2interface ros2node ros2param ros2service ros2topic rosapi-msgs rosbridge-library rosidl-adapter rosidl-runtime-py ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Provides services for getting various ROS meta-information, including ROS topic, services, interfaces or
action servers and managing ROS parameters.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
