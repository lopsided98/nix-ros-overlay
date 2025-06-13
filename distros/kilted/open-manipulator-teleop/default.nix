
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, rclpy, sensor-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kilted-open-manipulator-teleop";
  version = "3.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/kilted/open_manipulator_teleop/3.2.2-1.tar.gz";
    name = "3.2.2-1.tar.gz";
    sha256 = "786495741c6d126a988373b871fff2f40dbc6f1cd9f8cff6d45e51c33a5c36fa";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ control-msgs rclpy sensor-msgs std-msgs trajectory-msgs ];

  meta = {
    description = "OpenManipulator teleoperation package";
    license = with lib.licenses; [ asl20 ];
  };
}
