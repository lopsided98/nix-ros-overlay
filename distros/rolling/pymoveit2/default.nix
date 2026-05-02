
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-python, control-msgs, geometry-msgs, moveit-msgs, rclpy, sensor-msgs, shape-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-rolling-pymoveit2";
  version = "4.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pymoveit2-release/archive/release/rolling/pymoveit2/4.2.0-2.tar.gz";
    name = "4.2.0-2.tar.gz";
    sha256 = "b8679c216043ff2fb9ad8d5c1c325afd0e5967eaf1fbc6e62bc9b7ff6a4143f3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ action-msgs control-msgs geometry-msgs moveit-msgs rclpy sensor-msgs shape-msgs std-srvs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Basic Python interface for MoveIt 2 built on top of ROS 2 actions and services";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
