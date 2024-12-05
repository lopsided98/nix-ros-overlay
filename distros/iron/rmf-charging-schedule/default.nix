
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, rmf-fleet-msgs }:
buildRosPackage {
  pname = "ros-iron-rmf-charging-schedule";
  version = "2.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/iron/rmf_charging_schedule/2.2.7-1.tar.gz";
    name = "2.2.7-1.tar.gz";
    sha256 = "1f7ff2cf9d064dbe7b22e973b56b3266e68df329d1210e05c3f18a72e736dd40";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy rmf-fleet-msgs ];

  meta = {
    description = "Node for a fixed 24-hour rotating charger usage schedule";
    license = with lib.licenses; [ asl20 ];
  };
}
