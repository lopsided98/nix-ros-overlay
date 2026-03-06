
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, rmf-fleet-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-charging-schedule";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/rolling/rmf_charging_schedule/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "40a38c05f345fa892d268d6cf691af0627b4b00aeb5ba69f5fc440311b87f9ec";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy rmf-fleet-msgs ];

  meta = {
    description = "Node for a fixed 24-hour rotating charger usage schedule";
    license = with lib.licenses; [ asl20 ];
  };
}
