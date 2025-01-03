
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, python3Packages, rc-reason-msgs, rclpy, ros2pkg, tf2-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rc-reason-clients";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rc_reason_clients-release/archive/release/jazzy/rc_reason_clients/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "80c12fad6fdbf2a093cc883fb163a279fa491e04f5d7ea73638d29ad4581a68c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.requests rc-reason-msgs rclpy ros2pkg tf2-msgs visualization-msgs ];

  meta = {
    description = "Clients for interfacing with Roboception reason modules on rc_visard and rc_cube.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
