
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, diagnostic-aggregator, diagnostic-msgs, diagnostic-updater, irobot-create-msgs, pythonPackages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-diagnostics";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_robot-release/archive/release/humble/turtlebot4_diagnostics/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "a883bb10490b649efa4fba0ddf90691a3605585f7321963737c42d577d412478";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ diagnostic-aggregator diagnostic-msgs diagnostic-updater irobot-create-msgs rclpy sensor-msgs ];

  meta = {
    description = ''Turtlebot4 Diagnostics'';
    license = with lib.licenses; [ asl20 ];
  };
}
