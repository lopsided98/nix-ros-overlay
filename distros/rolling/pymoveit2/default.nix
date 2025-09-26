
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-python, control-msgs, geometry-msgs, moveit-msgs, rclpy, sensor-msgs, shape-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-rolling-pymoveit2";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pymoveit2-release/archive/release/rolling/pymoveit2/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "5a2aac50fefdd0610185e3ba7ec80c568c5b0b72964cccb65250814a163d2200";
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
