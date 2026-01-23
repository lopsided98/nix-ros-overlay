
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, rclpy, sensor-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-rolling-open-manipulator-teleop";
  version = "4.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/rolling/open_manipulator_teleop/4.1.2-1.tar.gz";
    name = "4.1.2-1.tar.gz";
    sha256 = "2ca262bd01036e47637a600e8ac3f3790016300b6f43a8276b47a68ba473bbff";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ control-msgs rclpy sensor-msgs std-msgs trajectory-msgs ];

  meta = {
    description = "OpenManipulator teleoperation package";
    license = with lib.licenses; [ asl20 ];
  };
}
