
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, rmf-fleet-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rmf-charging-schedule";
  version = "2.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/lyrical/rmf_charging_schedule/2.13.0-1.tar.gz";
    name = "2.13.0-1.tar.gz";
    sha256 = "f8a03c4db04e5bf632dbbd4085ab1a8478e2942e7f2b78e5777d657f9d0d21c3";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy rmf-fleet-msgs ];

  meta = {
    description = "Node for a fixed 24-hour rotating charger usage schedule";
    license = with lib.licenses; [ asl20 ];
  };
}
