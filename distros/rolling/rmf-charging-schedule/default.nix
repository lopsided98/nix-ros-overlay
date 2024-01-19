
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, rmf-fleet-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-charging-schedule";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/rolling/rmf_charging_schedule/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "0d648f5f8fcb13a3aef6157df87aa86b15f3db3a1d314ed01808f211489a716c";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy rmf-fleet-msgs ];

  meta = {
    description = ''Node for a fixed 24-hour rotating charger usage schedule'';
    license = with lib.licenses; [ asl20 ];
  };
}
