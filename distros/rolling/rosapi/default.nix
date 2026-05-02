
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-mypy, ament-cmake-pytest, ament-cmake-python, builtin-interfaces, geometry-msgs, rcl-interfaces, rclpy, rmw-dds-common, ros2action, ros2interface, ros2node, ros2service, ros2topic, rosapi-msgs, rosbridge-library, rosidl-adapter, rosidl-runtime-py, sensor-msgs, shape-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosapi";
  version = "4.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/rolling/rosapi/4.1.0-2.tar.gz";
    name = "4.1.0-2.tar.gz";
    sha256 = "c8b5355bf518ebbba9e03b6290179537fa406b5f7d09bd2b8b6033aa85a30051";
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
