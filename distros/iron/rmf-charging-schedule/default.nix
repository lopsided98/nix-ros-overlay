
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, rmf-fleet-msgs }:
buildRosPackage {
  pname = "ros-iron-rmf-charging-schedule";
  version = "2.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/iron/rmf_charging_schedule/2.2.4-1.tar.gz";
    name = "2.2.4-1.tar.gz";
    sha256 = "4e517306b92983f36165062d74a741c6ba0e1a64492e45c96b843a7a5b658354";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy rmf-fleet-msgs ];

  meta = {
    description = ''Node for a fixed 24-hour rotating charger usage schedule'';
    license = with lib.licenses; [ asl20 ];
  };
}
