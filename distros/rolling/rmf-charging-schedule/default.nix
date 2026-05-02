
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, rmf-fleet-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-charging-schedule";
  version = "2.12.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/rolling/rmf_charging_schedule/2.12.0-2.tar.gz";
    name = "2.12.0-2.tar.gz";
    sha256 = "9251bfa0480d5a890d52b267c0947ac5182442c11cc3ca6a8cd353c064c953e8";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy rmf-fleet-msgs ];

  meta = {
    description = "Node for a fixed 24-hour rotating charger usage schedule";
    license = with lib.licenses; [ asl20 ];
  };
}
