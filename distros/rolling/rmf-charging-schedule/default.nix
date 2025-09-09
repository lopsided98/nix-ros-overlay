
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, rmf-fleet-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-charging-schedule";
  version = "2.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/rolling/rmf_charging_schedule/2.10.1-1.tar.gz";
    name = "2.10.1-1.tar.gz";
    sha256 = "d343d9388a3ca3fb7e24412d5025a41a4a978aabe2c52b94a49bd3ddd3e174c4";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy rmf-fleet-msgs ];

  meta = {
    description = "Node for a fixed 24-hour rotating charger usage schedule";
    license = with lib.licenses; [ asl20 ];
  };
}
