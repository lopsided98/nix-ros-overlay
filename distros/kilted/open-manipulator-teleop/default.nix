
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, rclpy, sensor-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kilted-open-manipulator-teleop";
  version = "4.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/kilted/open_manipulator_teleop/4.0.6-1.tar.gz";
    name = "4.0.6-1.tar.gz";
    sha256 = "cea8b2afe1a70bb4d3281cbf225c14c40b9a8d966d0559245a381af9782b873b";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ control-msgs rclpy sensor-msgs std-msgs trajectory-msgs ];

  meta = {
    description = "OpenManipulator teleoperation package";
    license = with lib.licenses; [ asl20 ];
  };
}
