
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, rmf-fleet-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-charging-schedule";
  version = "2.11.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/rolling/rmf_charging_schedule/2.11.1-1.tar.gz";
    name = "2.11.1-1.tar.gz";
    sha256 = "e89ae5ad50f88eca93d0b681f712a5e2bf50865a1bf617c2a2611ac55eb6edc0";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy rmf-fleet-msgs ];

  meta = {
    description = "Node for a fixed 24-hour rotating charger usage schedule";
    license = with lib.licenses; [ asl20 ];
  };
}
