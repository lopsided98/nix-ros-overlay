
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-turtlebot3-autorace-detect";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_autorace-release/archive/release/rolling/turtlebot3_autorace_detect/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "415ae85ffb664f63f0a854162456024d01d95da3798acbaf383b13c21a974f29";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs ];

  meta = {
    description = "ROS 2 packages for turtlebot3_autorace_detect";
    license = with lib.licenses; [ asl20 ];
  };
}
