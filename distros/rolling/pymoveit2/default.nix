
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-pytest, ament-cmake-python, control-msgs, geometry-msgs, moveit-msgs, python3Packages, rcl-interfaces, rclpy, sensor-msgs, shape-msgs, std-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-rolling-pymoveit2";
  version = "5.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pymoveit2-release/archive/release/rolling/pymoveit2/5.0.0-1.tar.gz";
    name = "5.0.0-1.tar.gz";
    sha256 = "f7061b7b1f626650252c8baf7a5e85accad5f4db65085e79a8e9bf2198831c46";
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
