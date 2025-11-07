
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-python, control-msgs, geometry-msgs, moveit-msgs, rclpy, sensor-msgs, shape-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-pymoveit2";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pymoveit2-release/archive/release/humble/pymoveit2/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "7f0bdf9e49f37207ae531aca9b814001294144b9f3a65444d317b302a57e385c";
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
