
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, rmf-fleet-msgs }:
buildRosPackage {
  pname = "ros-kilted-rmf-charging-schedule";
  version = "2.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/kilted/rmf_charging_schedule/2.10.1-1.tar.gz";
    name = "2.10.1-1.tar.gz";
    sha256 = "4b5d1a2ed2cac0cc1885a871269ed01eb4f3be68d2c9cf4ca8eaa6744ac9d7c8";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy rmf-fleet-msgs ];

  meta = {
    description = "Node for a fixed 24-hour rotating charger usage schedule";
    license = with lib.licenses; [ asl20 ];
  };
}
