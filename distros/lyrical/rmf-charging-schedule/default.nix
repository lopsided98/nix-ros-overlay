
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, rmf-fleet-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rmf-charging-schedule";
  version = "2.12.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/lyrical/rmf_charging_schedule/2.12.0-3.tar.gz";
    name = "2.12.0-3.tar.gz";
    sha256 = "d2d7e9cc9947875dc69ad75062048a85d4444fd837e7f988fa75663e6be96b6c";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy rmf-fleet-msgs ];

  meta = {
    description = "Node for a fixed 24-hour rotating charger usage schedule";
    license = with lib.licenses; [ asl20 ];
  };
}
