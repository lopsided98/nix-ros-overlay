
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, python3Packages, pythonPackages, rc-reason-msgs, rclpy, ros2pkg, tf2-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-rc-reason-clients";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rc_reason_clients-release/archive/release/humble/rc_reason_clients/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "e4b27cc833f8046b938c78cb2c4e0ad1b42e23d4ec0e8f10dc5388fc360857db";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.requests rc-reason-msgs rclpy ros2pkg tf2-msgs visualization-msgs ];

  meta = {
    description = "Clients for interfacing with Roboception reason modules on rc_visard and rc_cube.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
