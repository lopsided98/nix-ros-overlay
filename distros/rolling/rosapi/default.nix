
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-mypy, ament-cmake-pytest, ament-cmake-python, builtin-interfaces, geometry-msgs, rcl-interfaces, rclpy, rmw-dds-common, ros2action, ros2interface, ros2node, ros2service, ros2topic, rosapi-msgs, rosbridge-library, rosidl-adapter, rosidl-runtime-py, sensor-msgs, shape-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosapi";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/rolling/rosapi/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "b68d36279eb043969fda34c28f7e4963e53427b82a5e841e2f25909ed6fb137c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-mypy ament-cmake-pytest geometry-msgs rmw-dds-common sensor-msgs shape-msgs ];
  propagatedBuildInputs = [ builtin-interfaces rcl-interfaces rclpy ros2action ros2interface ros2node ros2service ros2topic rosapi-msgs rosbridge-library rosidl-adapter rosidl-runtime-py ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Provides services for getting various ROS meta-information, including ROS topic, services, interfaces or
action servers and managing ROS parameters.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
