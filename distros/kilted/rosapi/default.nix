
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-mypy, ament-cmake-pytest, ament-cmake-python, builtin-interfaces, geometry-msgs, rcl-interfaces, rclpy, rmw-dds-common, ros2action, ros2interface, ros2node, ros2service, ros2topic, rosapi-msgs, rosbridge-library, rosidl-adapter, rosidl-runtime-py, sensor-msgs, shape-msgs }:
buildRosPackage {
  pname = "ros-kilted-rosapi";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/kilted/rosapi/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "b15035e5569948bf411f2ac6c2effd15423beea5733b322c73bdb155e2b39007";
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
