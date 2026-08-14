
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-mypy, ament-cmake-pytest, ament-cmake-python, builtin-interfaces, geometry-msgs, rcl-interfaces, rclpy, rmw-dds-common, ros2action, ros2interface, ros2node, ros2service, ros2topic, rosapi-msgs, rosbridge-library, rosidl-adapter, rosidl-runtime-py, sensor-msgs, shape-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rosapi";
  version = "4.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/lyrical/rosapi/4.2.1-1.tar.gz";
    name = "4.2.1-1.tar.gz";
    sha256 = "0e4256a1d7e6413249b14bfafe6721edaf680743bc962dddedf4b6d1554ecf5a";
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
