
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, python3Packages, pythonPackages, rc-reason-msgs, rclpy, ros2pkg, tf2-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-rc-reason-clients";
  version = "0.2.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rc_reason_clients-release/archive/release/rolling/rc_reason_clients/0.2.1-4.tar.gz";
    name = "0.2.1-4.tar.gz";
    sha256 = "571dba7d6fe1a11e8cd5f7c22979e326ec89320bf0f82a34df79da5d39ede85d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.requests rc-reason-msgs rclpy ros2pkg tf2-msgs visualization-msgs ];

  meta = {
    description = ''Clients for interfacing with Roboception reason modules on rc_visard and rc_cube.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
