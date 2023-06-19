
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, python3Packages, pythonPackages, rc-reason-msgs, rclpy, ros2pkg, tf2-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-rc-reason-clients";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rc_reason_clients-release/archive/release/rolling/rc_reason_clients/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "f12a3b67c6c5a8843c3b33c6064806d47045f3a6c38d05b4c3fc0debe15a4105";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.requests rc-reason-msgs rclpy ros2pkg tf2-msgs visualization-msgs ];

  meta = {
    description = ''Clients for interfacing with Roboception reason modules on rc_visard and rc_cube.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
