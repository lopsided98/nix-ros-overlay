
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, rmf-fleet-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-charging-schedule";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/rolling/rmf_charging_schedule/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "cd126136069bffde19d868669b982a3040b1eb28d724a0cf91e0328d706bbb5e";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy rmf-fleet-msgs ];

  meta = {
    description = ''Node for a fixed 24-hour rotating charger usage schedule'';
    license = with lib.licenses; [ asl20 ];
  };
}
