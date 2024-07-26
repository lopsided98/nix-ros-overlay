
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, rmf-fleet-msgs }:
buildRosPackage {
  pname = "ros-iron-rmf-charging-schedule";
  version = "2.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/iron/rmf_charging_schedule/2.2.6-1.tar.gz";
    name = "2.2.6-1.tar.gz";
    sha256 = "c3a5f26ce2b91f74459a4fc355e4a920b56b307ee849516d2a75db435c9905e9";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy rmf-fleet-msgs ];

  meta = {
    description = "Node for a fixed 24-hour rotating charger usage schedule";
    license = with lib.licenses; [ asl20 ];
  };
}
