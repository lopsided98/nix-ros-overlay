
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, rmf-fleet-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rmf-charging-schedule";
  version = "2.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/jazzy/rmf_charging_schedule/2.7.2-1.tar.gz";
    name = "2.7.2-1.tar.gz";
    sha256 = "6530ac9537fe7b9580ce6953bb1c8fe19bfb0db20cc650f9363381dd3bdafc4c";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy rmf-fleet-msgs ];

  meta = {
    description = "Node for a fixed 24-hour rotating charger usage schedule";
    license = with lib.licenses; [ asl20 ];
  };
}
