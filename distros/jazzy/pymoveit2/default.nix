
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-pytest, ament-cmake-python, control-msgs, geometry-msgs, moveit-msgs, python3Packages, rcl-interfaces, rclpy, sensor-msgs, shape-msgs, std-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-jazzy-pymoveit2";
  version = "5.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pymoveit2-release/archive/release/jazzy/pymoveit2/5.0.0-2.tar.gz";
    name = "5.0.0-2.tar.gz";
    sha256 = "7e97adeaa02c3be8f002acc61f206d9272d3a8cb875f3510be5fa56259a90226";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest python3Packages.pytest ];
  propagatedBuildInputs = [ action-msgs control-msgs geometry-msgs moveit-msgs python3Packages.numpy rcl-interfaces rclpy sensor-msgs shape-msgs std-msgs std-srvs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Basic Python interface for MoveIt 2 built on top of ROS 2 actions and services";
    license = with lib.licenses; [ bsd3 ];
  };
}
