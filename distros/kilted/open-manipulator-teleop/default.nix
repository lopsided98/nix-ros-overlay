
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, rclpy, sensor-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kilted-open-manipulator-teleop";
  version = "4.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/kilted/open_manipulator_teleop/4.1.2-1.tar.gz";
    name = "4.1.2-1.tar.gz";
    sha256 = "df33ede177020caf8b88bd89bf3794b06fdb69c847a5c7ee3f5b3dd4bf813abe";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ control-msgs rclpy sensor-msgs std-msgs trajectory-msgs ];

  meta = {
    description = "OpenManipulator teleoperation package";
    license = with lib.licenses; [ asl20 ];
  };
}
