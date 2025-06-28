
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, python3Packages, rc-reason-msgs, rclpy, ros2pkg, tf2-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-rc-reason-clients";
  version = "0.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rc_reason_clients-release/archive/release/kilted/rc_reason_clients/0.4.0-3.tar.gz";
    name = "0.4.0-3.tar.gz";
    sha256 = "268cb87a41c429737dbb30b40aa212ee3e7ca94fbe3200d1dff191563e9f7f04";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.requests rc-reason-msgs rclpy ros2pkg tf2-msgs visualization-msgs ];

  meta = {
    description = "Clients for interfacing with Roboception reason modules on rc_visard and rc_cube.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
