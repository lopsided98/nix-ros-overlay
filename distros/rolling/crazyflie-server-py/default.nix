
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, crazyflie-interfaces, geometry-msgs, motion-capture-tracking-interfaces, nav-msgs, python3Packages, rcl-interfaces, rclpy, sensor-msgs, std-msgs, std-srvs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-crazyflie-server-py";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crazyswarm2-release/archive/release/rolling/crazyflie_server_py/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "1774d52034e1ccec511bc6c87bf05a334398b21cafada50468d06f073989b1be";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ crazyflie-interfaces geometry-msgs motion-capture-tracking-interfaces nav-msgs rcl-interfaces rclpy sensor-msgs std-msgs std-srvs tf2-ros ];

  meta = {
    description = "Python Crazyflie server node for Crazyswarm2";
    license = with lib.licenses; [ mit ];
  };
}
