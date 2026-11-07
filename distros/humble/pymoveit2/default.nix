
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-pytest, ament-cmake-python, control-msgs, geometry-msgs, moveit-msgs, python3Packages, rcl-interfaces, rclpy, sensor-msgs, shape-msgs, std-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-pymoveit2";
  version = "5.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pymoveit2-release/archive/release/humble/pymoveit2/5.1.0-1.tar.gz";
    name = "5.1.0-1.tar.gz";
    sha256 = "738d6cc84151ebf19cb54593f357ab287388f2c2f7f358a8042f69faae43ec7d";
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
