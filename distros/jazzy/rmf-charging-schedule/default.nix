
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, rmf-fleet-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rmf-charging-schedule";
  version = "2.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/jazzy/rmf_charging_schedule/2.6.0-2.tar.gz";
    name = "2.6.0-2.tar.gz";
    sha256 = "a07a7429af1236cfcf3bc8784ca1675dd92fb3c0d5e3b586a9fed6e401bcf5a4";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy rmf-fleet-msgs ];

  meta = {
    description = "Node for a fixed 24-hour rotating charger usage schedule";
    license = with lib.licenses; [ asl20 ];
  };
}
