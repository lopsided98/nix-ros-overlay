
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, rmf-fleet-msgs }:
buildRosPackage {
  pname = "ros-iron-rmf-charging-schedule";
  version = "2.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/iron/rmf_charging_schedule/2.2.5-1.tar.gz";
    name = "2.2.5-1.tar.gz";
    sha256 = "ec666efeee4abd9baf74de873673e265ec6539aa262e4111e996bf3427d18b45";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy rmf-fleet-msgs ];

  meta = {
    description = ''Node for a fixed 24-hour rotating charger usage schedule'';
    license = with lib.licenses; [ asl20 ];
  };
}
